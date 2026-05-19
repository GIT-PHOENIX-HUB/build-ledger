set -eEu

if [ -d "/home/ubuntu" ]; then
  MACHINE="gr60mxd"
elif [ -d "/home/pi" ]; then
  MACHINE="connectivityserver"
else
  echo "Invalid machine type";
  exit 1
fi

if [ "/home/ubuntu/backend" = `pwd` ]; then
  # Very early gr60mxd builds (OS 1.0, app 1.4) didn't run rules.sh from backend/temp
	cd /home/ubuntu/backend/upgrade/temp
fi

# Cleanup any old mounts
umount /mnt/* > /dev/null  2>/dev/null || true
rm -rf /mnt/*

# Create mount points
mkdir -p /mnt/tmp

# Mount tmpfs to use for image contents
mount -t tmpfs tmpfs /mnt/tmp

if [ $MACHINE = "gr60mxd" ]; then
  # Create mount points
  mkdir -p /boot
  mount /dev/mmcblk3p1 /boot
fi

# Locate the pzbundle file we're installing

if [ -f "install.pzbundle" ]; then
  PZBUNDLE="install.pzbundle"
elif [ -f "../install.pzbundle" ]; then
  mv ../install.pzbundle .
  PZBUNDLE="install.pzbundle"
else
  echo "install.pzbundle not found. Aborting."
  exit 1
fi

# Extract pzbundle so we can get to the new boot files
#  no-timestamp is to prevent warnings when the RTC on the display is wrong. By
#  default tar warns when file timestamps are in the future. If perform_install
#  sees these it thinks we failed.

if [ $MACHINE = "connectivityserver" ]; then
  tar -xf $PZBUNDLE --to-stdout u-boot-connectivityserver.tar.xz --warning=no-timestamp --no-same-owner \
    | tar -xJf - -C /mnt/tmp --warning=no-timestamp --no-same-owner

  mkdir -p /recovery/boot/

  tar -xf $PZBUNDLE --to-stdout boot-connectivityserver.tar.xz --warning=no-timestamp --no-same-owner \
    | tar -xJf - -C /recovery/boot/ --warning=no-timestamp --no-same-owner
elif [ $MACHINE = "gr60mxd" ]; then
  tar -xf $PZBUNDLE --to-stdout boot-gr60mxd.tar.xz --warning=no-timestamp --no-same-owner \
    | tar -xJf - -C /mnt/tmp --warning=no-timestamp --no-same-owner

  cp /mnt/tmp/zImage-gr60mxd /mnt/tmp/zImage
fi

# DANGER!!! Once we rm the existing boot files, we have momentary bricking risk
# Copy boot files and bundle to boot partition
rm -rf /boot/*
cp -r /mnt/tmp/* /boot

# Unmount boot so we don't corrupt it when we reboot - that would suck
umount /boot /mnt/tmp

# Hope for the best. We're committed now.
reboot
