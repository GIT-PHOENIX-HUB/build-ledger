# Wiring Diagrams Reference

_Wiring diagrams for Generac standby generators_

_Compiled from 10 search results scraped from Generac documentation._
_Sources: search-wiring-diagrams.json_

---

## Table of Contents

1. [What is the layout of the control wires and what do they do?](#what-is-the-layout-of-the-control-wires-and-what-do-they-do?)
2. [[PDF] Wiring Diagram Schematic Drawing - Generac Power Systems, Inc.](#pdf-wiring-diagram-schematic-drawing---generac-power-systems-inc)
3. [[PDF] Installation Manual - Generac Power Systems](#pdf-installation-manual---generac-power-systems)
4. [Generac Standby Generator Wiring Diagram - Pinterest](#generac-standby-generator-wiring-diagram---pinterest)
5. [[PDF] Installation and Owner's Manual - Genset Services](#pdf-installation-and-owners-manual---genset-services)
6. [[PDF] Owner's Manual Automatic Transfer Switch - Generac Power Systems](#pdf-owners-manual-automatic-transfer-switch---generac-power-systems)
7. [Wiring our Generac generator transfer switch to the meter can](#wiring-our-generac-generator-transfer-switch-to-the-meter-can)
8. [[PDF] For Automatic Transfer Switch - Generac Power Systems](#pdf-for-automatic-transfer-switch---generac-power-systems)
9. [[PDF] Installation and Owner's Manual](#pdf-installation-and-owners-manual)
10. [Wiring diagram help, older generac standby generator](#wiring-diagram-help-older-generac-standby-generator)

---

## What is the layout of the control wires and what do they do?

**Source:** https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires

Loading

[×](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires# "Cancel and close") Sorry to interrupt

CSS Error

[Refresh](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires?nocache=https%3A%2F%2Fsupport.generac.com%2Fs%2Farticle%2FWhat-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires)

Skip to Main Content

#### What is the layout of the control wires and what do they do?

#### In a Generac Home Standby Generator installation, control wires play an essential role in allowing proper communication between the generator, transfer switch, and utility power source. The N1/N2, T1, 23/194, and 0/DC Common wires are key control wires that must be properly connected for optimal performance, and regular maintenance checks are critical to ensure reliable generator operation.      - Aug 8, 2025 - Knowledge

### Fields

Title

What is the layout of the control wires and what do they do?

URL Name

What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires

### Content

Public Answer

#### **Read the manual thoroughly and understand all of the instructions, cautions, and warnings before using this equipment. If any section of the manual is not understood, contact your nearest authorized dealer, or contact Generac Customer Service at 1-888-436-3722 (1-888-GENERAC), or [www.generac.com](http://www.generac.com/) with any questions or concerns.**    Control panel wiring for home standby generators

Control wires allow for proper communication and functionality between the generator, transfer switch, and utility power source. In a Generac Home Standby Generator installation, several key control wires must be properly connected and functioning for optimal performance.

#### Environment

This article applies to **Generac Guardian series** and **Next Generation series** air-cooled home standby generators.

> **Note**: The information in this article comes from the installation manuals for each respective generator series. Installation manuals can be found [using the product information & user manual lookup on Generac.com](https://www.generac.com/support/product-info-user-manuals/).

#### Section guide

- [Next Generation series control panel wiring layout](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires#nextgen)
- [Guardian series control panel wiring layout](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires#guradian)

#### Next Generation series control panel wiring layout

![](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000BBkv&feoid=00N5f00000gWhDU&refid=0EMU100000Hj7Wd)

### Electrical wiring connection points

| ID | Description | ID | Description | ID | Description |
| --- | --- | --- | --- | --- | --- |
| A | Control wire terminal block | E1 | Power lug E1 | H | Neutral stud |
| B | Sense wire terminal block | E2 | Power lug E2 | J | Neutral bar |
| C | Terminal block jumper | F | Ground stud | K | Customer connection block |
| D | Neutral lug | G | Equipment ground lug |

### Generator wiring

| Wire color | Wire numbers |
| --- | --- |
| YELLOW | N1 & N2 - 240 VAC - Sensing for utility dropout and pickup |
| BLUE \* | T1 - Fused 120 VAC for battery charger |
| WHITE \* | 00/T2 - Neutral for battery charger |
| BLACK \*\* | 0 - DC (-) Common ground wire |
| RED | 194 - DC (+) 12 VDC for transfer controls |
| WHITE | 23 - Transfer control signal wire |

_\*Must be connected to keep the battery charged whether the unit is running or not_

_\*\*Required if the generator is paired with optional Digital Power Management (DPM) smart technology_

### Guardian series control panel wiring layout    ![image.png](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000BBkv&feoid=00N5f00000gWhDU&refid=0EMU1000000MNIv)    Electrical wiring connection points

|     |     |     |     |     |     |     |     |
| --- | --- | --- | --- | --- | --- | --- | --- |
| ID | Description | ID | Description | ID | Description | ID | Description |
| A | DC Terminal Block | C2 | Wire tie for control wire | E2 | Power lug E2 | H | Neutral stud |
| B | AC Terminal Block | D | Neutral lug | F | Ground stud | J | Neutral bar |
| C1 | Wire tie for sense wires | E1 | Power lug E1 | G | Ground lug | — | — |

#### N1/N2 – Utility Voltage Sensing Wires (240V)

The N1 and N2 wires are responsible for sensing utility power dropout and pickup. These wires originate in the switch and must have 120VAC each (240VAC between them). The N1/N2 fuses in the Automatic Transfer Switch (ATS) protect these terminals. If the generator starts even when utility power is present, check this connection and fuses.

#### T1 – Battery Charge Circuit (120V)

The T1 wire powers the generator's battery charger and originates in the switch. It provides the 120VAC required to operate the internal battery charger. The T1 fuse in the ATS protects this circuit. If the generator batteries keep dying, check this connection and fuse.

#### 00 Neutral (White)

A designated wire for neutral per NEC 2023 code. This wire is included on all new generators manufactured in and after 2023. If this connection is present on the generator, then this wire must be connected for a battery charger to work.

#### 23/194 – Transfer Circuit

Wire 194 provides 12VDC to the ISACM board at the transfer switch. This voltage is used for powering the control board as well as the transfer relay. Wire 23 provides a ground for the transfer relay and is internally controlled by the generator's controller. If the transfer switch does not transfer, verify wire 194 has 12VDC and wire 23 has been taken to ground.

#### 0/DC Common

The DC Common is the common ground wire and is only used with smart switches. It provides constant ground to power the Smart A/C Module (SACM). If the SACM is not operating, check this connection.

#### 209/210 Wires – Common Alarm (Optional)

This is a customer-supplied connection that allows the generator to wire into an existing security system. These are normally open, dry contacts that close if the generator experiences a shutdown alarm. When they close, a message is sent to the home’s security system to alert it of a generator fault. These are the wires hanging loose under the control panel.

Regular maintenance, including checking these connections, is critical to ensure that the generator operates reliably when needed. If any of these connections are not functioning correctly, contact an authorized independent service dealer.

**Was this article helpful?**

Choose a general reason

\-\- Choose a general reason --

Feedback

Upload Files

Upload FilesOr drop files

Submit

* * *

### Need more help? Get in touch with our support team.

[Contact Support](https://www.generac.com/service-support)

Loading

What is the layout of the control wires and what do they do?

![](https://mavenoidfiles.com/49ea82ji0poq97dl1nq50rbd77t6voftgf6s)

### Which product can we help you with?

![Home Standby Generators](https://mavenoidfiles.com/4vfun73v936290r94oapqqhfi66g7rhp7317)

Home Standby Generators

![Mobile Link](https://mavenoidfiles.com/ei6dujod46q5jnu1o98eork3bqbvu24pkm6s)

Mobile Link

![Portable Generators](https://mavenoidfiles.com/iktv01atd39n959k828vfvpcg4qej2kndd14)

Portable Generators

![Pressure Washers and Water Pumps](https://mavenoidfiles.com/p172sivac29ieq7ahk5karr5hr3o1o9fs35j)

Pressure Washers and Water Pumps

---

## [PDF] Wiring Diagram Schematic Drawing - Generac Power Systems, Inc.

**Source:** https://bnhgenerators.com/wp-content/uploads/2025/03/Wiring-Diagram-Schematic-Drawing-4.pdf?srsltid=AfmBOoo9shJuTAEWCLa281l3qKejdwpi2SZRExweGfGogDHlJxJKqiRI

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/e3e877f98621ed67c84dd0b742aee226da30000028e1eec36041a1a4caab6905.jpg)

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/56c3b1de0f3e8238f0c48657a11ddbe4c71486ab21e5a6a9fcda204d9342e29c.jpg)

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/3921ad0de871240c31efe6ce44ba80c8f636a433619cb98f0c1d622aa7f579c0.jpg)

PAGE 3 OF 6

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/6653746aa221fc7ee26e2565a5260827f90432882ab25584b0f80c67628ae324.jpg)

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/e11bb85fbc945dd97a4d598af7dfb5fcabca6ce93f27a34048545e85185eee4e.jpg)

![](https://bnhgenerators.com/wp-content/uploads/2025/03/images/c7f3c7b4c21f04f486ce702da113a354c41eef27c22386cdb1f6f1dd101ac068.jpg)

### LEGEND:

AULIARY SHUTDOWN SWITCH CIRCUIT BREAKER, MAIN OUTPUT CURRENT TRANSFORMER FS FUEL SOLENOID HOT HIGH OIL TEMP SWITCH IM\_ IGNITION MODULE J= MAIN CONTROLLER CONNECTIONS LED LED BOARD LOP LOW OIL PRESSURE SWITCH R RESISTOR SC STARTER CONTACTOR SCR STARTER CONTROL RELAY SM STARTER MOTOR SP SPARK PLUG STB - STATOR TERMINAL BLOCK WM WIRELESS MODULE

---

## [PDF] Installation Manual - Generac Power Systems

**Source:** https://www.generac.com/globalassets/residential/dealers--installers/generac-installer-programs/solar--battery-installer-support/pwrcell-ats--01-install-manual.pdf

Installation Manual

For

®
PWRcell Automatic Transfer Switch

100 – 200 Amp, Service Entrance / 100 amp Non-Service Entrance

Model Number

CXSC100A301

(Non-service Entrance Rated)
CXSW100A301

CXSW100A301
(Service Entrance Rated with Utility Service Circuit Breaker)

CXSW100A301
(Service Entrance Rated with Utility Service Circuit Breaker)

CXSW200A301
(Service Entrance Rated with Utility Service Circuit Breaker)

(Service Entrance Rated with Utility Service Circuit Breaker)

SERIAL NUMBER: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

DATE PURCHASED:\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

PWRcell ATS requires a PWRcell Energy Storage System (ESS) to function
and cannot be used for Generator-only applications. Installation to a Generac Home Standby Generator without the presence of a PWRcell ESS will
damage this switch and void the warranty.

Para español , visita: [http://www.generac.com/service-support/owner-support](http://www.generac.com/service-support/owner-support)

Pour le français, visiter : [http://www.generac.com/service-support/owner-support](http://www.generac.com/service-support/owner-support)

* * *

Can expose you to cadmium, a carcinogen
and reproductive toxicant
[www.P65Warnings.ca.gov](http://www.p65warnings.ca.gov/).
(000765)

(000765)

* * *

Table of Contents

### Section 1: Safety

**Introduction** .....1
Read This Manual Thoroughly .....1

**Safety Rules** .....1
How to Obtain Service .....1

**Electrical Hazards** .....2

**General Hazards** .....3

### Section 2: General Information

**Applications** .....5

**Unpacking** .....5

**Equipment Description** .....5

**Transfer Switch Mechanism** .....5

**Utility Service Circuit Breaker (if equipped)** .....6

**Transfer Switch Data Decal** .....6

**Transfer Switch Enclosure** .....6

**Safe Use of Transfer Switch** .....6

**Load Management Options** .....6
PWRcell ATS Controller .....6
PWRcell ATS Controller Versions .....7
Smart Management Module (SMM)
(Sold Separately) .....7
Application Considerations .....8

### Section 3: Installation (ESS-Only)

**Introduction to Installation** .....9

**Inverter Compatibility** .....9

**Mount the Enclosure** .....9

**Open Enclosure** ..

**Manual Operation** .....15
Close to Utility Source Side .....15
Close to Inverter Source Side .....16
Return to Utility Source Side .....16

**Voltage Checks** .....16
Utility Voltage Checks .....16
Inverter Voltage Checks .....16

**PWRcell System Voltage Tests** .....16

**Maintenance** .....17

**Testing the PWRcell ATS Controller** .....17

**PWRcell ATS Controller Fuse Service** .....17

**Testing the SMM** .....17

### Section 5: Generator Integration

**Generator Integration Overview** .....19

**Configuration** .....19
PWRcell ATS Controller Requirements .....19
Replace Fuses in PWRcell Inverter for Generator
Integration .....20

**Installation** .....20
Managed Whole Home Backup .....20

**Setup and Commissioning** .....21
Verify Wiring .....21
Activate the Generator .....22
Commission the PWRcell System

Section 7: Drawings and Diagrams

Installation Drawings ..... 31
No. 0G6832-A: 100 A SE & non-SE / 150-200 A non-SE
..... 31
No.10000012171-A: 150 / 200 A SE ..... 32

* * *

Interconnection Drawings .................................33
No. A0001501194 (Part 1 of 3) — INTERCONNECTION
XFER SW 100-200 A — PWRcell Inverter ............... 33
No. A0001501194 (Part 2 of 3) — INTERCONNECTION
XFER SW 100-200 A — PWRcell Inverter ............... 34
No. A0001501194 (Part 3 of 3) — INTERCONNECTION
XFER SW 100-200 A — PWRcell Inverter ............... 35

* * *

Section 1: Safety

Introduction

Thank you for purchasing a Generac product. This unit
has been designed to provide high performance, efficient
operation, and years of use when maintained correctly.

Read This Manual Thoroughly

WARNING

Consult Manual. Read and understand manual
completely before using product. Failure to
completely understand manual and product
could result in death or serious injury. (000100a)

(000001)

If any section of this manual is not understood, contact
the nearest Independent Authorized Service Dealer
(IASD) or Generac Customer Service at 1-888-436-3722
(1-888-GENERAC), or visit [www.generac.com](http://www.generac.com/) for starting, operating, and servicing procedures. The owner is
responsible for proper maintenance and safe use of the
unit.
SAVE THESE INSTRUCTIONS for future reference. This

SAVE THESE INSTRUCTIONS for future reference. This
manual contains important instructions that must be followed during placement, operation, and maintenance of
the unit and its components. Always supply this manual
to any individual that will use this unit, and instruct them
on how to correctly start, operate, and stop the unit in
case of emergency.

Before operating or servicing this transfer switch:

The manufacturer cannot anticipate every possible
circumstance that might involve a hazard. The alerts in
this manual, and on tags and decals affixed to the unit,
are not all inclusive. If using a procedure, work method,
or operating technique that the manufacturer does not
specifically recommend, verify that it is safe for others
and does not render the equipment unsafe.
Throughout this publication, and on tags and decals

Safety Rules
The manufacturer cannot anticipate every possible

• Become familiar with this manual and the unit
before use.
• See the installation sections of the manual for

• See the installation sections of the manual for
instructions on final assembly procedures. Follow
the instructions completely.

Throughout this publication, and on tags and decals

affixed to the unit, DANGER, WARNING, CAUTION, and
NOTE blocks are used to alert personnel to special
instructions about a particular operation that may be
hazardous if performed incorrectly or carelessly. Observe
them carefully. Alert definitions are as follows:

(000002)

DANGER

Indicates a hazardous situation which, if not avoided,
will result in death or serious injury.

(000003)

WARNING

Indicates a hazardous situation which, if not avoided,
could result in death or serious injury.

CAUTION

Indicates a hazardous situation which, if not avoided,
could result in minor or moderate injury.

NOTE: Notes contain additional information important to
a procedure and will be found within the regular text of
this manual.

These safety alerts cannot eliminate the hazards that
they indicate. Common sense and strict compliance with
the special instructions while performing the action or
service are essential to preventing accidents.

How to Obtain Service

When contacting Generac Customer Service about parts
and service, always supply the complete model and
serial number of the unit as given on its data decal
located on the unit. Record the model and serial numbers
in the spaces provided on the front cover of this manual.

* * *

Electrical Hazards

DANGER

Electrocution. High voltage is present at
transfer switch and terminals. Contact with live
terminals will result in death or serious injury.
(000129)

(000119)

DANGER

Electrocution. Water contact with a power
source, if not avoided, will result in death
or serious injury.
(000104)

(000104)

DANGER

Electrocution. In the event of electrical accident,
immediately shut power OFF. Use non-conductive
implements to free victim from live conductor. Apply
first aid and get medical help. Failure to do so will
result in death or serious injury. (000145)

DANGER

Electrical backfeed. Use only approved switchgear to
isolate generator from the normal power source.
Failure to do so will result in death, serious injury,
and equipment damage.
(000237)

DANGER

Electrocution, equipment and property damage. Handle
transfer switches carefully when installing. Never install
a damaged transfer switch. Doing so could result in
death or serious injury, equipment and property
damage. (000195)

DANGER

Automatic start-up. Disconnect utility power and
render unit inoperable before working on unit.
Failure to do so will result in death or serious injury.
(000191)

(000157)

Electrocution. Turn utility supply OFF before
working on utility connections of the transfer
switch. Failure to do so will result in death or
serious injury.
(000123)

DANGER

(000120)

Equipment malfunction. Installing a dirty or damaged
transfer switch will cause equipment malfunction and
will result in death or serious injury.
(000119)

WARNING

(000121)

Electric shock. Only a trained and licensed electrician
should perform wiring and connections to unit. Failure to
follow proper installation requirements could result in death,
serious injury, and equipment or property damage.(000155a)

CAUTION

Equipment damage. Verify all conductors are tightened
to the factory specified torque value. Failure to do so
could result in damage to the switch base.

CAUTION

Equipment damage. Perform functional tests in the
exact order they are presented in the manual.
Failure to do so could result in equipment damage.
(000121)

CAUTION
Equipment damage. Exceeding rated voltage and

Equipment damage. Exceeding rated voltage and
current will damage the auxiliary contacts. Verify
that voltage and current are within specification
before energizing this equipment. (000134a)

* * *

General Hazards

DANGER

Electrical backfeed. Use only approved switchgear to
isolate generator from the normal power source.
Failure to do so will result in death, serious injury,
and equipment damage.
(000237)

(000237)

DANGER

Electrocution. High voltage is present at
transfer switch and terminals. Contact with live
terminals will result in death or serious injury.
(000129)

(000129)

DANGER

DANGER

Electrocution. Water contact with a power
source, if not avoided, will result in death
or serious injury.
(000104)

DANGER

Electrocution. Do not wear jewelry while
working on this equipment. Doing so will
result in death or serious injury.
(000188)

(000188)

DANGER
Electrocution. Only authorized personnel should

Electrocution. Only authorized personnel should
access transfer switch interior. Transfer switch
doors should be kept closed and locked. Failure to
do so will result in death or serious injury.
(000213)

DANGER

(000247a)

Electrocution. In the event of electrical accident,
immediately shut power OFF. Use non-conductive
implements to free victim from live conductor. Apply
first aid and get medical help. Failure to do so will
result in death or serious injury. (000145)

WARNING

(000747)

Loss of life. This product is not intended to
be used in a critical life support application.
Failure to adhere to this warning could result
in death or serious injury. (000209b)

WARNING

Equipment damage. This unit is not intended for use as a prime
power source. It is intended for use as an intermediate power
supply in the event of temporary power outage only. Doing so
could result in death, serious injury, and equipment damage.
(000247a)

WARNING

Risk of Injury. Do not operate or service this
equipment if not fully alert. Fatigue can impair the
ability to operate or service this equipment and could
result in death or serious injury.
(000747)

• Competent, qualified personnel should install,
operate and service this equipment. Adhere strictly
to local, state, and national electrical and building
codes. When using this equipment, comply with
regulations established by the National Electrical
Code (NEC), CSA Standard; the Occupational
Safety and Health Administration (OSHA), or the
local agency for workplace health and safety.
• If working on this equipment while standing on

local agency for workplace health and safety.
• If working on this equipment while standing on
metal or concrete, place insulative mats over a dry
wood platform. Work on this equipment only while
standing on such insulative mats.
• Any voltage measurements should be performed
with a meter that meets UL3111 safety standards,

• Any voltage measurements should be performed
with a meter that meets UL3111 safety standards,
and meets or exceeds overvoltage class CAT III.

* * *

This page intentionally left blank.

* * *

Section 2: General Information

Applications

The PWRcell® Automatic Transfer Switch (ATS) can be
utilized in conjunction with a PWRcell system, with or
without an integrated generator. A PWRcell Inverter with
a PWRcell Battery attached will be referred to as a
PWRcell Energy Storage System (PWRcell ESS), or ESS
herein.
When used with a PWRcell ESS alone, the PWRcell ATS

When used with a PWRcell ESS alone, the PWRcell ATS
enables the entire home to be powered from the ESS,
within the limits of it’s power capacity. See Load
Management Options to verify PWRcell system is
protected from being overloaded.
The PWRcell ATS can also be used to integrate a

The PWRcell ATS can also be used to integrate a
PWRcell ESS with a compatible Generac Automatic
Home Standby Generator. For more information see
Generator Integration.
For more information, and to access the most up to date

For more information, and to access the most up to date
version of this installation manual, visit http://
[www.generac.com/service-support/owner-support](http://www.generac.com/service-support/owner-support).

Unpacking

Carefully unpack the transfer switch. Inspect closely for
any damage which may with the carrier any claims for
loss or damage incurred while in transit.
Verify all packing material is completely removed from

Verify all packing material is completely removed from
the switch prior to installation.
The kit should include:

The kit should include:

• Manual operation handle

• Storage bracket for manual operation handle

Equipment Description
This automatic transfer switch is used for transferring

• Two 3.15 A fuses (to be installed in the PWRcell
Inverter for AC Generator Integration)

Transfer Switch Mechanism

This automatic transfer switch is used for transferring
electrical load from a utility (normal) power source to a
PWRcell system or generator as an optional (standby)
power source.
Transfer of electrical loads occurs automatically when

See Figure 2-1. This switch is used with a single-phase
system when the single-phase neutral line is to be
connected to a neutral lug and is not to be switched.
Solderless, screw-type terminal lugs are standard.

Solderless, screw-type terminal lugs are standard.

Figure 2-1. Typical Single-Phase ATS Transfer
Mechanism

| A | Utility Closing Coil |
| --- | --- |
| B | Standby Source Closing Coil |
| C | Utility Lugs(N1&N2) |
| D | Standby Source Lugs(E1&E2) |
| E | Load Lugs(T1&T2) |

The conductor size range is as follows:

| Switch Rating | Wire Range | Conductor Tightening Torque |
| --- | --- | --- |
| 100A | #14-1/0AWG(Cu/Al) | 50in-lbs(5.6Nm) |
| 200A | #6-250MCM(Cu/Al) | 275in-lbs(31Nm) |

exceed 30 percent of the switch rating.
This UL listed transfer switch is for use in optional
standby systems only (NEC article 702).
A 100 A rated switch is suitable for use on circuits

TQ2 and Siemens QJ2).
A 200 A rated switch is suitable for use on a circuit
capable of 22,000 RMS symmetrical amperes, 240 VAC

This UL listed transfer switch is for use in optional
standby systems only (NEC article 702).
A 100 A rated switch is suitable for use on circuits

This transfer switch is suitable for control of motors, electric
discharge lamps, tungsten filament, and electric heating
equipment where the sum of motor full load ampere ratings
and the ampere ratings of other loads do not exceed the
ampere rating of the switch and the tungsten load does not
exceed 30 percent of the switch rating.
This UL listed transfer switch is for use in optional when protected by a circuit breaker without an adjustable
short time response or by fuses.

Utility Service Circuit Breaker (if
equipped)

The utility service and generator disconnect circuit breakers for 100 A models are:

• Type BQ, 2-pole

• 10,000 A/C

• 120 / 240 VAC, 100 A

• 50 / 60 Hertz

• Wire range: #1 - #8 AWG (Cu/Al)

• The conductor tightening torque is 50 in-lbs (5.6
Nm).

• Type 225AF, 2-pole
•

• 22,000 A/C

• 120 / 240 VAC, 150 A / 200 A

• 50 / 60 Hertz

• Wire range:

– Line: 300 MCM - 6 STR (Cu/Al)

• The conductor tightening torque is:

– Line: 375 in-lbs (42.4 Nm)

– Load - ATS: 275 in-lbs. (31 Nm)

A data decal is permanently affixed to the transfer switch
enclosure. Use this transfer switch only with the specific
limits shown on the data decal and on other decals and
labels that may be affixed to the switch. This will prevent
damage to equipment and property.
Include all information from the data decal when

The standard switch enclosure is a National Electrical
Manufacturer’s Association (NEMA) and UL 3R type
enclosure. UL and NEMA 3R (indoor / outdoor rated)
type enclosures typically provide a degree of protection
against falling rain and sleet and are undamaged by the
formation of ice on the enclosure.

Transfer Switch Enclosure

Include all information from the data decal when
requesting information or ordering parts for this
equipment.
Record the Model and Serial numbers in the space

Record the Model and Serial numbers in the space
provided on the front cover of this manual for future
reference.

Safe Use of Transfer Switch

WARNING

Consult Manual. Read and understand manual
completely before using product. Failure to
completely understand manual and product
could result in death or serious injury.
(000100a)

Before installing, operating, or servicing this equipment,
read the Safety Rules carefully. Comply strictly with all
Safety Rules to prevent accidents and / or damage to
the equipment. The manufacturer recommends a copy of
the Safety Rules be posted near the transfer switch.
Also, read all instructions and information found on tags,
labels, and decals affixed to the equipment.
Two publications which outline the safe use of transfer

Two publications which outline the safe use of transfer
switches are the following:

• NFPA 70; National Electrical Code

• UL 1008: Standard for Safety—Automatic Transfer
Switches

NOTE: It is essential to use the latest version of any
standard to guarantee correct and current information.

Load Management Options

Load management systems are designed to work
together to prevent a generator or PWRcell system from

together to prevent a generator or PWRcell system from
being overloaded by large appliance loads. A PWRcell
ATS Controller is provided as standard equipment with
this switch. PWRmanager and Smart Management
Modules (SMMs) are available as an additional options
for load management (sold separately).

together to prevent a generator or PWRcell system from
being overloaded by large appliance loads. A PWRcell
ATS Controller is provided as standard equipment with
this switch. PWRmanager and Smart Management
Modules (SMMs) are available as an additional options
for load management (sold separately).

PWRcell ATS Controller

NOTE: PWRcell systems with Generator Integration
should NOT use the PWRcell ATS Controller for load
management. PWRmanager or SMM may be used
instead.

Four LEDs, located on the PWRcell ATS Controller (B),
illuminate when a load is connected and powered.
See Figure 2-2. The controller has a test button (C) used

The controller has four load management circuits for air
conditioning (A/C) loads. The four load management
circuits are numbered 1 to 4 and correspond to a priority
level (descending in priority order). The controller
manages loads by shedding the connected loads in the
event of a drop in system frequency (overload). For
assistance with system design call Generac Clean
Energy Inside Sales, 1-855-635-5186, opt. 1.
See Figure 2-2. A/C Priorities 1 – 4 (A) have connections

See Figure 2-2. The controller has a test button (C) used
to simulate an overload condition. This button operates
even when the transfer signal is inactive.

* * *

See Generator Integration for more information.

other configurations which require a PWRcell ATS.
IMPORTANT NOTE: Use of a PWRcell ATS Controller
version which is incompatible with the intended
application may result in unexpected and incorrect
behavior from the PWRcell system. Review the
following materials closely and verify the correct
equipment is being used for the chosen
configuration.

other configurations which require a PWRcell ATS.
IMPORTANT NOTE: Use of a PWRcell ATS Controller
version which is incompatible with the intended
application may result in unexpected and incorrect
behavior from the PWRcell system. Review the
following materials closely and verify the correct
equipment is being used for the chosen

configuration.

Figure 2-2. PWRcell ATS Controller Versions

PWRcell ATS Controller Versions

Figure 2-3. Smart Management Module (SMM)

See Figure 2-3. Any 240 V loads, including central air
conditioners, can be managed using an SMM. The
system can accommodate up to eight individual SMMs.

NOTE: SMMs are self-contained and have individual
built-in controllers. They are wired in series with the 240
V branch circuit wiring between the circuit breaker and
the managed load.

* * *

Application Considerations

NOTE: Use of an SMM for load management of a
PWRcell system is limited to operation with the SMM’s
Lock Out Jumper in its default position. For details on
jumper location and adjustment, see Smart
Management Module Owner’s / Installation Manual.

An overload condition is determined by the PWRcell
Inverter frequency while the inverter is in Island Mode.
Loads are managed and de-energized when frequency is
less than 58 Hz for three seconds or less than 50 Hz for
½ second (for 60 Hz systems).
The PWRcell ATS controller can be used in conjunction

The PWRcell ATS controller can be used in conjunction
with individual SMMs to manage a combined total of
eight loads.
•

• The priority order determines the order in which
managed loads are re-energized by the load
management system after all of the managed loads
have been de-energized due to a utility service
interruption or overload condition.
•

• Use Priorities A/C 1–4 on the controller as the top
priorities, then up to four SMMs as Priorities 5–8.
•

• Use only select A/C priorities on the controller as the
top priorities, then use additional SMMs as the
remaining priorities.
• A SMM can share a priority with an A/C priority on

• A SMM can share a priority with an A/C priority on
the controller provided the standby power source is
sized to handle the combined surge load from both
appliances. Sharing priorities can allow up to 12
loads to be managed in a correctly sized system.
In any combination of modules, the recovery times after a

In any combination of modules, the recovery times after a
loss of utility power or shutdown due to overload are
shown in Table 1: Priority Settings.

Table 1. Priority Settings

| Priority | Recovery Time | PWRcell ATS Controller | SMM |
| --- | --- | --- | --- |
| 1 | 5 minutes | Yes | Yes |
| 2 | 5 minutes 15 seconds | Yes | Yes |
| 3 | 5 minutes 30 seconds | Yes | Yes |
| 4 | 5 minutes 45 seconds | Yes | Yes |
| 5 | 6 minutes | NA | Yes |
| 6 | 6 minutes 15 seconds | NA | Yes |
| 7 | 6 minutes 30 seconds | NA | Yes |
| 8 | 6 minutes 45 seconds | NA | Yes |

* * *

Section 3: Installation (ESS-Only)

Introduction to Installation

This equipment has been wired and tested at the factory.
Installing the switch includes the following procedures:

1. Open Enclosure

2. Open Enclosure

3. Mount the Enclosure

4. Connect Utility and Standby Power Sources

5. Connect the Inverter ATS Control Cable

6. Connect Current Transformers (CTs)

7. Connect Air Conditioner Loads

8. Configure the Inverter

9. Apply Fault Current Label


Inverter Compatibility

The PWRcell ATS is compatible with all single-phase
residential models of the PWRcell Inverter. For
installations where a generator will be integrated, use
only XVT076A03 model inverters. To determine the
model of the inverter, see product label on the bottom
right hand side of the enclosure. The model number
“X7602” or “XVT076A03” will be visible.

Open Enclosure

DANGER

1. See Figure 3-1. First, remove outer cover (A).

Equipment malfunction. Installing a dirty or damaged
transfer switch will cause equipment malfunction and
will result in death or serious injury.
(000119)

Mounting dimensions for the transfer switch enclosure
are in this manual. Enclosures are typically wallmounted. See Drawings and Diagrams.
This transfer switch is mounted in a UL type 3R

This transfer switch is mounted in a UL type 3R
enclosure. It can be mounted outside or inside and should
be based on the layout of installation, convenience and
proximity to the utility supply and load center. Install the
transfer switch as close as possible to the electrical loads
that are to be connected to it. Mount the switch vertically
to a rigid supporting structure. Horizontal mounting of the
switch is prohibited. To prevent switch distortion, level all
mounting points. If necessary, use washers behind
mounting holes to level the unit.

(000119)

2. Remove thumb screw (B).

3. Slide slot (C) over retention tab.

4. Slide slot (C) over retention tab.


* * *

4. Lower cover until clear of top flange (D), and pull
   away from enclosure.

5. Remove inner panel (E).

6. Remove inner panel (E).


NOTE: Inner panel (E) is ONLY on Service Entrance
Rated Models.

6. Loosen nut (F) until it clears t-slot (H) in inner
   panel.

7. Grasp inner panel at two cutouts (G – left and
   right). Tilt inner panel as shown, passing nut
   through t-slot.


NOTE: Two 3.15 A fuses, designed for the PWRcell
Inverter, are taped to the front of the PWRcell ATS
Controller. These fuses are a necessary component for
integrating a AC coupled generator with the PWRcell
system. For details, see Replace Fuses in PWRcell
Inverter for Generator Integration.

Connect Utility and Standby Power
Sources

DANGER

Electrocution. Turn utility and emergency
power supplies to OFF before connecting
power source and load lines. Failure to do so
will result in death or serious injury.
(000116)

CAUTION

Equipment damage. Verify all conductors are tightened
to the factory specified torque value. Failure to do so
could result in damage to the switch base.

(000120)

1. Remove finger safe barrier covers and connect
   utility supply at the utility service disconnect circuit
   breaker terminals N1 and N2. Follow torque
   specifications listed on the circuit breaker.
2. See Figure 3-2. Connect utility neutral conductor

Installation and interconnection drawings are provided in
this manual. See Drawings and Diagrams.

NOTE: A wire type main bonding jumper (A) is
provided on 200 A units and 100 A Service
Entrance rated units. This bonding jumper can be
removed if needed where the ATS is not installed
as service equipment.

NOTE: 100 A service entrance rated model will
have a service disconnect in area (D) of Figure 3-
3.

3. Use a 2-pole 40 A circuit breaker to connect the L1
   and L2 terminals on the inverter’s AC Grid
   Connection terminals to the main distribution
   panel. Follow the torque specifications listed on the
   circuit breaker.

NOTE: Incorrect installation of a PWRcell ATS can result
in an objectionable current path through a paralleled
neutral connection. Reference NEC 250.6. The neutral
conductor for the inverter AC Grid Connection circuit is
not required to be installed to the point of common
coupling with the utility as permitted by the exception in
NEC 200.3. The installer is responsible for compliance
with applicable national, state, and local codes.

4. Connect the inverter protected load ungrounded
   feeder conductors to terminals E1 and E2 on the
   transfer mechanism.

5. Connect the inverter protected load neutral

6. Connect the inverter protected load neutral
   conductor to the neutral terminal bar. Connect the
   inverter protected load equipment grounding
   conductor to the equipment grounding terminal bar.
   Follow all torque specifications for the terminal
   bars.

7. Connect a subpanel supply to T1 and T2
   Terminals. Connect subpanel Neutral conductor to
   the neutral terminal bar and the equipment
   grounding conductor to the equipment ground
   Copper or Aluminum conductors shall be sized in
   accordance with all applicable NEC requirements,
   and shall be permitted to be sized based on the
   75°C column of Table 310.16 in the NEC. The
   installation must comply fully with all applicable
   codes, standards, and regulations.
   Knockouts into the transfer switch can be made in the


Knockouts into the transfer switch can be made in the
field as needed for entry of power cables and conduit.
Conduit entry shall maintain the proper wire bending
spaces required by Tables 312.6 (A) and (B) in the NEC.
For transfer switches installed in wet locations, power
cables or conduits entering above the level of
uninsulated live parts shall use fittings listed for use in
wet locations as required by 312.2 in the NEC.

* * *

Figure 3-2. Wiring Connections 200 A Unit

| A | Bonding Jumper | B | Neutral Terminal Bar |
| --- | --- | --- | --- |
| C | Grounding Terminal Bar | N1 | Utility Line 1 |
| N2 | Utility Line 2 | E1 | Standby Power Source Line 1 |
| E2 | Standby Power Source Line 2 | T1 | Load Line 1 |
| T2 | Load Line 2 |  |  |

Figure 3-3. Wiring Connections 100 A Unit

| A | Bonding Jumper | B | Neutral Terminal Bar |
| --- | --- | --- | --- |
| C | Grounding Terminal Bar | D | Service Disconnect |
| N1 | Utility Line 1 | N2 | Utility Line 2 |
| E1 | Standby Power Source Line 1 | E2 | Standby Power Source Line 2 |
| T1 | Load Line 1 | T2 | Load Line 2 |

Tighten terminal lugs to the torque values as noted on the
decal located on the inside of the door. Wipe away any
excess corrosion inhibitor after tightening terminal lugs,
carefully.

Connect the Inverter ATS Control
Cable

NOTE: Cat 5 cables are not permitted to be installed in
the same raceways as the power conductors.

Use a minimum of a Cat 5 cable to connect the “Inverter
ATS control” port on the controller to the “ATS” port on
the Inverter. Use Cat 5 with 600 V insulation, and route
away from the Utility and Inverter supply conductors. See
NEC Article 725.136(D) for more information on the
installation requirements. See Figure 3-4, Figure 3-5,
and Figure 3-6.

* * *

Figure 3-4. Controller Connections

* * *

Installation (ESS-Only)

Figure 3-5. Inverter Connections for X7602

A PWRcell DC Disconnects H Service Port (Generac Personnel Only)
B REbus Bi-directional DC Terminals J STOP Terminals (External Shutdown)
C Internet Connection K Protected Loads Disconnect
D DC Main Fuses L AC Grid Connection Terminals
E Current Transformers (CTs) Accessory Port M Protected Loads Terminals
F Automatic Transfer Switches (ATS) Accessory Port N Grounding Bar
G REbus Beacon Port Q Not Used
P Not Used

Figure 3-6. Inverter Connections for XVT076A03

A PWRcell DC Disconnects J STOP Terminals (External Shutdown)
B REbus Bi-directional DC Terminals K Fast-Blow Mini Fuses 1A 250V
C Internet Connection L AC Grid Connection Terminals
D DC Main Fuses M Protected Loads Terminals
E Current Transformers (CTs) Accessory Port N Grounding Bar
F Automatic Transfer Switches (ATS) Accessory Port P Service Port (Generac Personnel Only)
G REbus Beacon Port Q Display
H RGM PWR / Gen Inhibit R LTE

Connect the Current Transformers (CTs)
Connect the CTs as shown in Table 3-1 below. Clamp CT1 and CT2 around the wires connected to T1 and T2, respectively.

Table 3-1. CTs Connections

CT Controller PORT WIRE COLOR
1 CT1+ Yellow
1 CT1- Green
2 CT2+ Yellow
2 CT2- Green

Use a Cat 5 cable to connect the "Inverter CTs" port on the controller to the "CTs" port on the Inverter. Use Cat 5

PWRcell Automatic Transfer Switch Installation Manual 13 with 600 V insulation, and route away from the Utility and Inverter supply conductors. See Figure 3-4, Figure 3-5,
and Figure 3-6.

Connect Air Conditioner Loads
See Figure 3-4. The PWrcell ATS controller can control an air conditioner (24 VAC) directly.

Control of Air Conditioner Load

1. Route the thermostat cable (from the furnace / thermostat to the outdoor air conditioner unit) to the transfer switch.
2. Connect the wire to the terminal strip terminals (A/C 1) on the PWrcell ATS Controller as shown in Figure 3-4. These are normally closed contacts which open upon load shed conditions. Route thermostat wire away from high voltage wires.
3. If required, connect additional air conditioners to the terminal strip terminals (A/C 2 – 4).

Contact Ratings
A/C 1 – 4 24 VAC, 1.0 A Max

NOTE: These instructions are for a typical air conditioner installation. Control of certain heat pumps and 2-stage air conditioners may require special connections or the use of SMMs to control the loads.

Configure the Inverter
To enable control of the PWrcell ATS by a PWrcell Inverter, inverter settings must be modified. Using the inverter control panel, review and configure the inverter settings described below. See Adjusting Inverter Settings in the PWrcell Inverter Installation and Owner's Manual for more information.

Setting Range Default Description
NumTran Switches 0/1/2 0 Defines the number of external automatic transfer switches connected to one inverter system and enables transfer switch controls.
EnaLoad Shed 0/1/2 0 Select 1 if using SMM devices to shed loads. Select 2 if using the PWrcell ATS Controller to shed loads (with or without SMMs).

Apply Fault Current Label
See Figure 3-7. A Fault Current Identification Label is provided in the bag containing the unit Installation manual and transfer switch manual operation handle. The 2017 NEC requires that the short-circuit current rating of the transfer equipment, based on the type of overcurrent protective device protecting the transfer equipment, be field marked on the exterior of the transfer equipment. For NEC compliance, verify the required short-circuit current rating of the transfer switch before installation. The completed label provides the local AHJ (Authority Having Jurisdiction) with the information they may require during inspection.
Apply the label to the exterior of the transfer switch enclosure. Use a pen to fill in the required information, and then cover the label with the clear protective decal.

NOTE: The 2020 NEC does not require the use of this label for installations in one and two-family dwelling units.

* * *

Operation (ESS-Only)

Section 4: Operation (ESS-Only)

Functional Tests and Adjustments

CAUTION
Equipment damage. Perform functional tests in the
exact order they are presented in the manual.
Failure to do so could result in equipment damage.
(000121)

CAUTION
Equipment damage. Do not use excessive force while
manually operating the transfer switch. Doing so could
result in equipment damage.
(000122)

Following transfer switch installation and interconnection,
inspect the entire installation carefully. A competent,
qualified electrician should perform the inspection. The
installation should comply strictly with all applicable
codes, standards, and regulations. When absolutely
certain the installation is correct, complete a functional
test of the system.

IMPORTANT NOTE: Before proceeding with functional
tests, read and verify all instructions and information in
this section is understood. Read the information and
instructions of labels and decals affixed to the switch. Note
any options or accessories which may be installed and
review their operation.

Manual Operation

DANGER
Electrocution. Do not manually transfer under load.
Disconnect transfer switch from all power sources
prior to manual transfer. Failure to do so will result in
death or serious injury, and equipment damage.
(000132)

NOTE: Remove handle from mechanism upon
completion and before installation of protective covers.

See Figure 4-1. A manual handle (B) is shipped with the
transfer switch manual. Manual operation must be
checked BEFORE the transfer switch is operated
electrically. To check manual operation, proceed as follows:

Figure 4-1. Manual Operation

1. Verify the inverter is in the OFF mode.
2. Turn OFF both utility (service disconnect circuit
   breaker) and standby power supplies to the
   transfer switch.
3. Note position of transfer mechanism main contacts
   (A) by observing the movable contact carrier arm.
   This can be viewed through the long narrow slot in
   the inside cover. The top of the movable contact
   carrier arm is yellow to be easily identified.

• Manual operation handle in the UP position - LOAD
terminals (T1, T2) are connected to utility terminals
(N1, N2).
• Manual operation handle in the DOWN position -
LOAD terminals (T1, T2) are connected to STANDBY
terminals (E1, E2).

Close to Utility Source Side

See Figure 4-1. Before proceeding, verify the position of
the switch by observing the position of manual operation
handle (A). If the handle is UP, the contacts are closed in
the utility (normal) position, no further action is required.
If the handle is DOWN, proceed with Step 1.

1. With the handle inserted into the movable contact
   carrier arm, move handle UP. Hold on to the handle
   as it will move quickly after the center of travel.

* * *

Operation (ESS-Only)

2. Remove manual operation handle from movable contact carrier arm. Return handle to storage bracket.

Close to Inverter Source Side

See Figure 4-1. Before proceeding, verify the position of the switch by observing the position of the manual operation handle. If the handle is DOWN, the contacts are closed in the inverter (standby) position. No further action is required. If the handle is UP, proceed with Step 1.

1. With the handle inserted into the movable contact carrier arm, move the handle DOWN. Be sure to hold on to the handle as it will move quickly after the center of travel.
2. Remove manual operation handle from movable contact carrier arm. Return handle to storage bracket.

Return to Utility Source Side

1. Manually actuate switch to return manual operation handle to the UP position.
2. Remove manual operation handle from movable contact carrier arm. Return handle to storage bracket.

NOTE: Remove handle from mechanism upon completion and before installation of protective covers.

Voltage Checks
NOTE: Use the Digital Multimeter (DMM) LowZ low input impedance setting to collect accurate voltage measurements. LowZ eliminates the possibility of inaccurate ghost voltage readings, also known as phantom voltage or stray voltage readings. See DMM manufacturer's literature for additional information.

Utility Voltage Checks
DANGER
Electrocution. High voltage is present at transfer switch and terminals. Contact with live terminals will result in death or serious injury.
(000129)

DANGER
Electrocution. Turn utility supply OFF before working on utility connections of the transfer switch. Failure to do so will result in death or serious injury.
(000123)

1. Turn ON the utility power supply to the transfer switch using the utility service disconnect circuit breaker.

2. With an accurate AC voltmeter, check for correct voltage. Measure across ATS terminal lugs N1 and N2; N1 to NEUTRAL and N2 to NEUTRAL.


Inverter Voltage Checks
DANGER
Electrocution. High voltage is present at transfer switch and terminals. Contact with live terminals will result in death or serious injury.
(000129)

1. Open all breakers in load center.
2. Open service entrance breaker in ATS or switch upstream of the ATS.
3. Inverter should switch the ATS and begin powering the load center.
4. Verify voltage and frequency of each phase in load center using multimeter. Each phase should be between 118 – 124 V, and 59.9 – 60.1 Hz.
5. Close service entrance circuit breaker to end test.

NOTE: ESS should be charged to at least 20% before performing this test.

PWRcell System Voltage Tests
DANGER
Electrocution. High voltage is present at transfer switch and terminals. Contact with live terminals will result in death or serious injury.
(000129)

1. Open all breakers in load center except one dual-pole breaker of 20 – 30 A.
2. Open service entrance breaker in ATS or switch upstream of the ATS.
3. Inverter should switch the ATS and begin powering the load center.
4. Verify power output from inverter on the LCD interface on the inverter. If less than 1 kW, close more breakers in load center until load reaches 1 kW.
5. Verify voltage and frequency of each phase in load center using multimeter. Each phase should be between 118 – 124 V, and 59.9 – 60.1 Hz.
6. Close the service entrance circuit breaker, then the remaining breakers in the load center to end test.

NOTE: ESS should be charged to at least 20% before performing this test.

* * *

Operation (ESS-Only)

Installation Summary

1. Verify the installation has been correctly performed as outlined by the manufacturer and that it meets all applicable laws and codes.
2. Verify correct operation of the system as outlined in the appropriate installation and owner's manuals.
3. Educate the end-user on the correct operation, maintenance, and service call procedures.

NOTE: The Utility Power Circuit Breaker in the transfer switch must be turned OFF to simulate a utility outage. Shutting off the main disconnect in a subpanel connected to the transfer switch will NOT simulate an outage.

Maintenance

DANGER
Automatic start-up. Disconnect utility power and render unit inoperable before working on unit.
Failure to do so will result in death or serious injury.
(000191)

The PWRCell ATS requires no specific maintenance.
See the appropriate installation and owner's manuals for maintenance guidance on other PWRCell products in the system.

Testing the PWRCell ATS Controller

A "Test" push button is provided on top of the PWRCell ATS Controller to test the operation of the load shed functions. The test pushbutton will work when the ATS is in the utility or the inverter position.

1. Turn on the utility supply to the ATS.
2. Wait for 5 minutes.
3. Verify managed loads are powered and all LEDs illuminate on controller.
4. Press the TEST button on the controller.
5. Verify all of the connected loads to be "shed" become disabled.
6. After five minutes verify A/C 1 is energized and Status LED A/C 1 is ON.
7. After another 15 seconds, verify A/C 2 is energized and Status LED A/C 2 is ON.
8. After another 15 seconds, verify Load A/C 3 is energized and Status LED Load A/C 3 is ON.
9. After another 15 seconds, verify A/C 4 is energized and Status LED A/C 4 is ON.

PWRcell ATS Controller Fuse Service
See Figure 4-2. A fuse removal and installation tool (A) is included in the controller housing.

Figure 4-2. Fuse Removal and Installation Tool

If a fuse requires replacement, snap the tool free with an appropriate tool such as diagonal pilers, and use it to replace the fuse. The tool can be stored in the controller housing retainer directly above the fuses, with the large thumb tab facing out.

Use only Generac replacement fuses — part number 10000005117, rated 240 VAC, 6.3 Amps, 10,000 AIC.

Alternative fuses are Littelfuse® 021606.3MXP or Optifuse® FCD-6.3.

Testing the SMM

See SMM Owner's / Installation Manual for testing procedure.

* * *

This page intentionally left blank.

18 PWRcell Automatic Transfer Switch Installation Manual

* * *

Generator Integration

Section 5: Generator Integration

Generator Integration Overview
The PWRcell ATS can integrate a Generac Automatic Home Standby Generator with a PWRcell ESS to power more simultaneous loads and allow longer backup run times. Compatible generators are limited to Generac-produced, single-phase models 9 kW or larger with an air-cooled engine and an EVO I or EVO II Evolution controller. Contact an IASD to determine if the generator can be integrated with a PWRcell ESS. If there is an existing generator on site, it is recommended to contact the original dealer to coordinate installation.

Configuration
Generator Integration with PWRcell will require the installation of two automatic transfer switches - one for the generator, and one for the inverter. See diagram No. A0001501194 in the back of this manual for a detailed wiring diagram.

NOTE: PWRcell ATS requires a PWRcell ESS to function and cannot be used for Generator-only applications.

Configuration Inverter Requirements ATS Quantity Interconnection Drawing
Managed Whole Home Backup XVT076A03 2¹ A0001501194 pg 3 of 3

¹ATS model and size should be selected with site requirements in mind. It is the responsibility of the installer to ensure the correct ATS is selected for the installation site and application. Generator integration requires use of PWRcell ATS controller (part # A0002532225) to be installed in the inverter ATS.

A0002059820
ATS CONTROLLER

A0002532225
ATS CONTROLLER W/O SACM 014698

Figure 5-1. Generator Integration - PWRcell ATS Controller Requirements

PWRcell Automatic Transfer Switch Installation Manual

* * *

Generator Integration

PWrcell ATS Controller Requirements

See Figure 5-1. All PWrcell ATS models will include a standard version of the PWrcell ATS controller (Part #: A0002059820; Pictured left) suitable for standard PWrcell configurations. However, this controller is not suitable for installation in the inverter ATS for generator integration.

See Figure 5-1. For Generator Integration, the Inverter ATS must be upgraded with a PWrcell ATS Controller (Part #: A0002532225; Pictured right). Purchase Upgrade Kit (Model G0080060) to utilize this controller.

IMPORTANT NOTE: Use of a PWrcell ATS Controller version that is incompatible with the intended application may result in unexpected and incorrect behavior from the PWrcell system.

Replace Fuses in PWrcell Inverter for Generator Integration

See Figure 5-2. When integrating a Generac Home Standby Generator with a PWrcell system, it is required to replace the 1 A fuses in the PWrcell Inverter for the RGM PWR / Gen Inhibit circuit with the 3.15 A fuses included with this ATS.
• Locate and remove the two 3.15 A fuses attached to the front of the PWrcell ATS Controller.
• Remove both 1 A fuses from the PWrcell Inverter.
• Install the two 3.15 A fuses into the PWrcell Inverter.

Installation

DANGER
Electrocution. Turn utility and emergency power supplies to OFF before connecting power source and load lines. Failure to do so will result in death or serious injury. (000116)

Begin by opening the enclosure of the PWrcell ATS. See Open Enclosure for more details.
See Drawings and Diagrams in this manual for complete installation and interconnection diagrams.

NOTE: All installations must comply with national, state, and local codes. It is the responsibility of the installer to perform an installation which will pass the final electrical inspection.

Managed Whole Home Backup
The Whole Home Backup configuration with generator integration offers both generator and ESS backup power for the whole home by using two transfer switches - one to transfer power between utility and a generator, and one to unlock whole home backup from the PWrcell Inverter ATS. See interconnection drawing No. A0001501194 (Part 3 of 4) — INTERCONNECTION XFER SW 100-200 A — PWrcell Inverter at the end of this manual.

NOTE: The inverter ATS is not required to be a service rated ATS in configuration.

NOTE: For Whole Home Generator Integration, the Inverter ATS must be upgraded with a PWrcell ATS Controller Upgrade Kit (Model G0080060) - this kit will include a modified PWrcell ATS controller (Part #: A0002532225).

1. Verify the PWrcell ATS Controller used in the Inverter ATS is Part #: A0002532225. If it is not, cease all other installation activities and use the PWrcell ATS Controller Upgrade Kit (Model G0080060) to upgrade the Inverter ATS.

2. Connect utility service conductors at the utility service disconnect circuit breaker terminals N1 and N2 of the generator ATS. Follow torque specifications listed on the circuit breaker.

3. Connect the utility neutral conductor to the neutral terminal bar of the generator ATS. The grounding electrode conductors can be connected to the equipment grounding terminal bar (see NEC 250.24(a)(4)). Follow all torque specifications for the terminal bars. A wire main bonding jumper is provided to correctly bond the service equipment.

4. Connect the E1 and E2 power lugs in the generator to terminals E1 and E2 on the transfer mechanism in the generator ATS. Connect the generator neutral wire to the neutral terminal bar on the genera-


Figure 5-2. Replace Fuses for Generator Integration tor ATS. Connect the generator ground wire to the
equipment grounding terminal bar on the generator
ATS.

5. Connect the T1 and T2 terminals on the generator
   ATS to terminals N1 and N2 on the inverter ATS.

6. Connect the neutral terminal bar on the generator

7. Connect the neutral terminal bar on the generator
   ATS to the neutral terminal bar on the inverter ATS.
   Connect the equipment grounding bar on the generator ATS to the equipment grounding bar on the
   inverter ATS.

8. Connect the T1 and T2 terminals on the inverter
   ATS to the main distribution panel supply. Connect
   the main panel neutral conductor to the neutral terminal bar and the equipment grounding conductor
   to the equipment ground bar on the inverter ATS.

9. Use a 2-Pole 40 A circuit breaker to connect the

10. Use a 2-Pole 40 A circuit breaker to connect the
   inverter AC Grid Connection terminals L1 and L2 to
   the main distribution panel load-side of the Inverter
   ATS.

11. Connect the inverter's ground bar to the equipment
   grounding bar in the main distribution panel.


NOTE: Incorrect installation of a PWRcell ATS can result
in an objectionable current path through a paralleled
neutral connection. See NEC 250.6. The neutral
conductor for the inverter AC Grid Connection circuit is
not required to be installed to the point of common
coupling with the utility as permitted by the exception in
NEC 200.3. The installer is responsible for compliance
with applicable national, state, and local codes.

10. Connect the N2 Protcd terminal of the inverter
    Protected Loads terminals to the neutral terminal
    bar in the inverter ATS.

11. Connect the inverter Protected Loads terminals L1

12. Connect the inverter Protected Loads terminals L1
    Protcd and L2 Protcd to terminals E1 and E2 on
    the transfer mechanism of the inverter ATS.

13. Using 26-16 AWG wire, connect the “Generator

14. See Connect the Inverter ATS Control Cable to
    connect the “ATS” port on the inverter to the
    inverter ATS. See Connect Air Conditioner
    Loads to complete wiring requirements for the
    inverter ATS.

15. See Connect the Current Transformers (CTs)

16. Using 26-16 AWG wire, connect the “Generator
    Control” terminals on the inverter’s PWRcell ATS
    Controller to the matching “Generator Control” terminals on the generator’s PWRcell ATS Controller,
    taking care to maintain polarity.

17. Using 26-16 AWG wire, connect the Gen Inhibit


Setup and Commissioning

Proceed as follows to setup and commission the system:

1. Verify Wiring.

2. Commission the PWRcell System.

3. Activate the Generator.

4. Validate PWRcell Firmware.

5. See Generator Manual Override Commands.

6. Validate Return to Grid Connected Operation.

7. Validate Charging the ESS from the Generator.

8. Validate Powering the Home with the ESS Only.


Verify Wiring

Before proceeding to the Generator Integration functionality test procedures, verify the system wiring using the
following checklist:

IMPORTANT: THIS CHECKLIST MUST BE COM-
PLETED BEFORE ENERGIZING THE SYSTEM.

Wiring Checklist:
¨

¨ The “Inverter ATS Control” port on the inverter PWRcell ATS controller is wired to the inverter “ATS” port via
Cat 5 cable. The inverter “ATS” port is labeled 'I' in Figure 5-3.
¨ The “Inverter CTs” port on the generator PWRcell ATS

¨ The “Inverter CTs” port on the generator PWRcell ATS
controller is wired to the inverter “CTs” port via Cat 5
cable. The inverter “CTs” port is labeled ‘H’ in Figure 5-3.
¨

¨ The “Gen Inhibit” L1 and L2 terminals in the inverter
wiring compartment are wired to the P1 and P2 terminals,
respectively, on the generator PWRcell ATS Controller.
See item H in Figure 3-6.
¨ Service conductors are wired to the N terminals on

¨ Service conductors are wired to the N terminals on
the generator PWRcell ATS.
¨ Generator is wired to the E terminals on the generator

¨ Generator is wired to the E terminals on the generator
PWRcell ATS.
¨

¨ The T terminals of the inverter PWRcell ATS are wired
to the main distribution panel.
¨

* * *

¨ Check consistency of L1 and L2, verifying lines do not
cross over or change between the inverter ATS, the
inverter, and the main distribution panel (the system must
be powered off for these steps).
¨

¨ Verify the inverter ATS is in the UP position. Use the
manual operation handle as needed.
¨

¨ Verify utility power is still disconnected from entire
installation and close the 2-pole 40 A backfeed breaker
for the inverter AC Grid Connection. Also verify the
Protected Loads Disconnect is closed.
¨

¨ With a digital multi-meter, measure continuity
between the T1 and E1 terminals on the inverter ATS. If
there is no continuity, check for miswiring and ensure
consistency of L1 and L2 across equipment.
¨

¨Open the 2-pole 40 A backfeed breaker for the
inverter AC Grid Connection.

Figure 5-3. Accessory Ports

| A | Current Transformers(CTs)Accessory Port(RJ-45) |
| --- | --- |
| B | Automatic Transfer Switch(ATS)Accessory Port(RJ-45) |
| C | REbus Beacon Port(USB-B) |
| D | Authorized Generac Personnel Only |
| E | STOP Terminals |

3. Disconnect the home from utility power. Disconnect
   power upstream from the PWRcell ATS connected
   to the generator. If the PWRcell ATS is service
   entrance rated, the main breaker inside the PWRcell ATS can be used to disconnect utility power.

4. Verify generator starts and powers the main panel.

5. Connect to utility power and verify the generator
   turns off after a few minutes. The ATS should
   return to the normal utility position.

6. Verify generator starts and powers the main panel.


Commission the PWRcell System

With the generator off, complete PWRcell system commissioning instructions. See the PWRcell Inverter
Installation and Owner's Manual / Commissioning for
pre-commissioning checks and system commissioning.

Validate Powering the Home with the Generator Only

1. Verify the generator is in AUTO mode by checking

Step 6 in the PWRcell system commissioning process,
“Configure Inverter Settings & Enable Inverter” will
require additional settings to be set for generator integration. See Configure Inverter Settings for Generator
Integration.

NOTE: There are minimum firmware requirements for
the PWRcell Inverter and PWRcell Battery to operate
with generator integration. See Validate PWRcell Firmware.

IMPORTANT NOTE: PWRcell Battery modules will be
at a low state of charge when they are new out of the
box. To avoid having the generator turn on immediately when simulating an outage, it will be necessary
to charge PWRcell Batteries for a minimum of 31
minutes upon commissioning. See Automatic Generator Override Conditions.

* * *

Configure Inverter Settings for Generator Integration

1. From the home screen on the inverter control panel, use the right arrow key to navigate to the inverter device
   page.

2. Push the center button to access the inverter device main menu.

3. Navigate to “Mod. Settings” using the down arrow key and select using the center button. Modify the settings in
   the following table based on site configuration:


| Setting | Range | Default | Description |
| --- | --- | --- | --- |
| NumTranSwtchs | 0/1/2 | 0 | Defines the number of external automatic transfer switches installed and enables transfer switch controls. |
| For Generator Integration, this must be 2. |  |  |  |
| EnaLoadShed | 0/1/2 | 0 | Select 1 if using PWRmanager and/or SMM devices to manage loads. Select 2 if using the PWRcell ATS Controller to manage loads (with or without SMMs). Do not use PWRmanager and PWRcell ATS Controller together for load management. |
| ACGenPower | 0-26kW | 0 | Nameplate power rating of the integrated Generac Home Standby Generator. If no generator is integrated, leave at 0. |
| ACGenCtrlMode | 0/1/2 | 0 | Select one of the three settings below to set Generator Control Mode. See Generator Control Modes for more info. |
| 0=Single Transfer |  |  |  |
| 1=Source Cycling |  |  |  |
| 2=Always On |  |  |  |

4. Use the down arrow key to scroll to the bottom of the menu and select ‘Save’ using the center button to save
   settings changes.

Validate PWRcell Firmware

1. Access the Installer Configuration Tool by logging onto the REbus Beacon.

2. Select ‘Inverter’ from the menu.

3. Select 'Common' from the inverter submenu.

4. Verify inverter firmware version is 13760 or greater.

5. Select ‘Battery’ from the menu.

6. Select 'Common' from the battery submenu.

7. Verify battery firmware version is 12970 or greater.


NOTE: See Verifying Inverter Firmware Version in PWRcell Inverter Installation and Owner's Manual for more
information. To request a firmware update, call 1-855-395-7841 or visit generac.com/resources-and-tools/ceinstaller-resources/installation-resources.

* * *

Generator Control Modes

Generators integrated into a PWRcell ESS can operate using one of three control modes -‘Single Transfer’, ‘Source
Cycling’, or ‘Always On’- depending on the installation configuration and the home owner's usage needs.

| Generator Control Mode | Description |
| --- | --- |
| Single Transfer | In the event of a power outage, the inverter will prioritize using the ESS to power the home,and the generator will be kept off.Once theESS SoC goes below 25%,the inverter will switch the home to generator power.Spare generator power will be used to charge theESS.The home will be powered by the generator for the remainder of the outage. |
| Source Cycling | In the event of a power outage,the inverter will prioritize using the ESS to power the home,and the generator will be kept off.Once theESS SoC goes below 25%,the inverter will switch the home to generator power.Spare generator power will be used to charge theESS.Once theESS SoC goes above 95%,the inverter will switch the home back toESS power,and this cycling betweenESS and generator power will repeat for the remainder of the outage. |
| Always On | In the event of a power outage,inverter will prioritize using the generator to power the home.Spare generator power will be used to charge theESS.The home will be powered by the generator for the remainder of the outage. |

NOTE: In an outage, the inverter will prioritize solar power over generator power to charge the batteries, but can use
excess generator power if needed and when available.

NOTE: If the inverter system is unable to supply adequate power to the active loads, the system will switch backup
supply to the integrated generator regardless of the selected operating mode.

Reference Generator Manual Override Commands

For PWRcell systems correctly configured and set for AC Generator Integration, there are manual override commands
that can be accessed using the inverter control panel. Use these commands to temporarily override the generator control mode selected. Select ‘AutoACGenCtrl’ to return to using the selected generator control mode.

| Generator Manual Override Command | Description |
| --- | --- |
| AutoACGenCtrl | Returns the system to operate using its Generator Control Mode after an override command. |
| NOTE: Selecting ‘AutoACGenCtrl’ does not modify the Generator Control Mode. |  |
| TurnACGenOn | Sends a command to have the system turn on the integrated Generac Home Standby Generator. Use this to override Generator Control Modes, 'Single Transfer' or 'Source Cycling.' This will allow the ESS to charge from the generator. |
| TurnACGenOff | Sends a command to have the system turn off the integrated Generac Home Standby Generator. Use this to override the operation of the generator and allow the PWRcell system to support house loads. |
| NOTE: Upon selection, the generator may come back on if the battery cannot support house loads. |  |

NOTE: Upon restoration of grid power, the manual override command will be cleared, and the inverter will transition
back to using the Generator Control Mode.

* * *

Automatic Generator Override Conditions

When configured for generator integration, the PWRcell
Inverter looks for reserve power. If load exceeds the
reserve capacity (typically 9 kW) of the PWRcell Battery,
the inverter will set a 31-minute timer allowing the generator to turn-on and cover the load until the timer runs out.

The following is a list of conditions for the PWRcell
Inverter to allow an integrated generator to turn ON or
OFF during a grid outage.

The PWRcell Inverter will allow a generator to turn ON if
any of these conditions are met:
Condition 1 - The Generator Manual Override = 'Tur-

Condition 1 - The Generator Manual Override = 'TurnACGenOn'

Condition 2 - The Generator Manual Override =
'AutoACGenCtrl' AND
• Battery SoC is less than or equal to 25% OR

• Battery SoC is less than or equal to 25% OR
•

• Home Load Demand exceeds PWRcell ESS
Capacity
Condition 3 - The Generator Manual Override = 'Tur-

Condition 3 - The Generator Manual Override = 'TurnACGenOff’ AND
•

• Home Load Demand exceeds PWRcell ESS
Capacity
The PWRcell Inverter will prompt a generator to turn OFF

The PWRcell Inverter will prompt a generator to turn OFF
if any of these conditions are met:
Condition 1 - The Generator Manual Override = 'Tur-

Condition 1 - The Generator Manual Override = 'TurnACGenOff'
Condition 2 - The Generator Manual Override =

Condition 2 - The Generator Manual Override =
'AutoACGenCtrl' AND
•

• Battery SoC is greater than or equal to 95%
AND

• Home Load Demand is less than PWRcell ESS
Capacity AND
•

3. Verify 'ACGenCtrlMode' is set to either '0' for
   “Single Transfer” or '1' for “Source Cycling.”
4. Simulate an outage by disconnecting utility power.

• Time since the generator turned ON exceeds
31 minutes

4. Simulate an outage by disconnecting utility power.
   The ESS will begin powering house loads.

5. Wait a minimum of 5 minutes before proceeding to

6. Wait a minimum of 5 minutes before proceeding to
   the next test.


Validate Powering the Home with the ESS Only

Validate Charging the ESS from the Generator

1. With utility power still off, navigate to the inverter
   device page, and press the center button to access
   the inverter main menu.

2. At the inverter main menu, use the down arrow key

3. At the inverter main menu, use the down arrow key
   to scroll down to 'TurnACGenOn' and press the
   center button to select. This will temporarily
   override the Generator Control Mode to ensure the
   home is powered by the generator power only.

4. Navigate to the home screen on the inverter control

5. Navigate to the home screen on the inverter control
   panel and verify the generator icon is shown in the
   bottom right corner.

6. Disable PV Links as necessary to validate the ESS
   is charging from generator power as shown by the
   power flow display on the home screen. Wait a
   minimum of 5 minutes, then select 'TunACGenOff.'


NOTE: Large house loads may limit or cause fluctuations in battery charging.

Validate Return to Grid Connected Operation

2. Verify home is powered by the utility within 30 seconds.

3. Reconnect utility power.

4. Verify inverter connects to the grid within 5 minutes. Inverter will show “grid connected” on the
   inverter device page.


NOTE: Upon restoration of grid power, the manual override setting will be cleared, and the inverter will transition
back to using the Generator Control Mode.

* * *

This page intentionally left blank.

* * *

Section 6: Troubleshooting

Troubleshooting

| Problem | Possible Cause | Corrective Action |
| --- | --- | --- |
| On the inverter device page,“fuse blown” error shown. | The ATS Cat 5 cable is faulty. | Verify male RJ45 connectors are correctly terminated. Use a data tester/Cat 5 tester to test continuity. |
| The P1/P2 connections on PWRcell ATS Controller are miswired. | Verify wiring matches diagrams. |  |
| If using two ATSes，“Generator Control”是miswired. | Verify wiring matches diagrams,and verify“Generator Control” wires do not flip polarity when wiring from one ATS to the other. |  |
| Fast-blow mini fuses are blown.See Figure3-6. | Take fuses out,and check them for continuity.Replace fuses which read as open/no continuity.For more details,see the PWRcell Parts Manual. |  |
| If integrating a Home Standby Generator,ensure the1A fast-blowmini fuses are replaced with the3.15A fuses provided with thePWRcellATS. |  |  |
| For more details,seeReplace Fuses inPWRcell Inverter forGenerator Integration. |  |  |
| Generator signal wires damaged or miswired. | Verify wire23is not shorted to ground and all generator signal wires are correctly connected. |  |
| Generator is still running afterusing the“TurnACGenOff”命令. | Loads exceed what theESS can supply. | Reduce load to a level that theESS can supply. |
| ESS is below25%SoC. | Allow the generator to charge theESS before trying to turn thegenerator off. |  |
| Home is unpowered while thegenerator is running. | TheESS experienced an overload whileislanded and itcan'tconnect the loads tothe generator since theyexceed thesafeoperating limits of theESS. | Reduce load and then manuallyturn the generator off usingtheOFFbutton on the generator'scontrol panel.Wait5secondsandthenturn the generatoron usingtheAUTObutton.Theinverterwill reconnect the loads during this5second period. |
| Switched to generator powerwhen theESS SoC is above25%.(Doesn'tapplyto“Always On”mode) | Lost communicationwith thePWRcellBattery. | Checkgroundconnectionsare robustas these areusedforcommunication. |
| Loads exceedwhat theESS can supply. | Reduce loads so they don'texceedwhat theESS can supply. |  |

Error Codes

The inverter can detect a variety of setpoint misconfigurations and wiring errors. If detected, the inverter will display a
unique code on its device page.
A misconfiguration error will show up as “Configuration Error: X”, where X is the unique code. The table below explains

A misconfiguration error will show up as “Configuration Error: X”, where X is the unique code. The table below explains
the meaning of the different codes.

| Configuration Error Codes |  |  |  |
| --- | --- | --- | --- |
| Code | HEX Value | Description | Corrective Action |
| 0 | 0X7700 | AC-Coupled PV is not supported on this inverter hardware version. Newer hardware is needed. | Replace Inverter with an XVT model Inverter (Hardware version 1010 or later) to configure the PWRcell system for AC-Coupled PV. |
| 1 | 0X7701 | The PWRcell Inverter is not configured for islanding. This is required for AC-Coupled PV. | Use the Inverter Mod. Settings to set “EnaIslanding” to “on”. See Configure the Inverter for more information. |
| 2 | 0X7702 | The PWRcell Inverter is configured for an incorrect number of ATSes. For AC-Coupled PV, 1 ATS should be used. | Verify that only 1 ATS is installed. |
| Use the Inverter “Mod. Settings” to set ‘NumTranSwtchs’ to ‘1.’ See Configure the Inverter for more information. |  |  |  |
| 3 | 0X7703 | Generator integration is not supported on this inverter hardware version. Newer hardware is needed. | Replace Inverter with an XVT model Inverter (Hardware version 1010 or later) in order to utilize Generator Integration. |
| 4 | 0X7704 | The PWRcell Inverter is not configured for islanding. This is required for Generator Integration. | Use the Inverter “Mod. Settings” to set ‘EnaIslanding’ to ‘on.’ See Configure the Inverter for more information. |
| 5 | 0X7705 | The PWRcell Inverter is configured for an incorrect number of ATSes. For Generator Integration, 1 or 2 ATSes should be used. | Verify the number of ATSes installed. |
| Use the Inverter Mod. Settings to set ‘NumTranSwtchs’ to ‘1’ or ‘2’ to match the number of installed ATSes. See Configure the Inverter for more information. |  |  |  |

PWRcell Automatic Transfer Switch Installation Manual

* * *

| Configuration Error Codes |  |  |  |
| --- | --- | --- | --- |
| Code | HEX Value | Description | Corrective Action |
| 6 | 0X7706 | The PWRcell Inverter is configured for 2 ATSs,but ACGenPower is set to 0.'ACGenPower must be set to a non-0 value for AC Generator Integration. | Use the Inverter Mod.Settings"to set ACGenPower"to the correct value based on the nameplate power rating of the integrated generator.See Configure the Inverter for more information. |
| 7 | 0X7707 | The PWRcell Inverter is configured for Generator Integration,but the installed PWRcell ATS(s) do not have the correct controller. | Use the PWRcell ATS Controller Upgrade Kit (Model G0080060) to allow AC Generator Integration with the installed PWRcell ATSeS.See PWRcell ATS Controller Upgrade Kit in the PWRcell Inverter Installation and Owner's Manual for more information. |
| 8 | 0X7708 | ACGenPower setting is not configured between 9 kW and 26 kW for generator integration. | Adjust ACGenPower in Mod.Settings"value to match the AC generator nameplate power value.ACGenPower"must be at least 9 kW to enable Integration. |
| 9 | 0X7709 | The PWRcell Inverter is configured for both AC-Coupled PV and Generator Integration.Only one of these features can be supported on a single system. | Verify which configuration will be supported.Use the Inverter Mod.Settings"to configure the system accordingly:If supporting AC-Coupled PV,set ACGenPower"to 0.'If supporting AC Generator Integration,set'ACPVPower"to 0.'See Configure the Inverter for more information. |
| A | 0X770A | The PWRcell Inverter is configured for 30 applications.AC-Coupled PV and Generator Integration are only supported with 10 applications. | Install a single-phase inverter if the application is for a single phase service.Otherwise,for three-phase services,use the Inverter Mod.Settings"to ensure'ACPVPower"and'ACGenPower"are both set to 0'to indicate that neither AC-Coupled PV or AC Generator Integration will be used.See Configure the Inverter for more information. |
| B | 0X770B | The PWRcell Inverter is configured for 1 or more ATS but is not configured for islanding. | Verify the presence of 1 or more ATS is installed on the system.Use the Inverter Mod.Settings"to configure the system accordingly:If 1 or more ATS is installed,set'Enalslanding'to on.'If no ATS is installed,set'NumTranSwits'to 0.'See Configure the Inverter for more information. |
| C | 0X770C | The PWRcell Inverter is configured for 1 or more ATS but is also configured for 30 applications.An ATS may not be used for PWRcell installations on 30 services. | Install a single-phase inverter if the application is for a single-phase service.Otherwise,for three-phase services,use the Inverter Mod.Settings"to ensure'NumTranSwits'is set to 0.'See Configure the Inverter for more information. |
| D | 0X770D | Bad input phase angle.Phase angle has been detected to be 120 degrees or less.For single-phase services,this should be 180 degrees. | Check voltage measurement and verify the system is wired up correctly to a single-phase service 120/240 V. |

* * *

A misconfiguration error will show up as “Wiring Error: X”, where X is the unique code. The table below explains the
meaning of the different codes.

| Wiring Error Codes |  |  |  |
| --- | --- | --- | --- |
| Code | HEX Value | Description | Corrective Action |
| 0 | 0X7720 | The PWRcell Inverter is configured for AC Generator Integration but no ATS has been detected. | Check the ATS & CTs Cat 5 cables are intact and connected to the correct ports of the inverter. |
| Check the ATS limit switch is connected to the “Auxiliary Contact” port of the PWRcell ATS Controller. |  |  |  |
| 1 | 0X7721 | The PWRcell Inverter is NOT configured for an ATS, but an ATS has been detected. | Verify the number of ATSes installed. |
| Use the Inverter Mod. Settings to set NumTranSwitchs to ‘1’ or ‘2’ to match the number of installed ATSes. See Configure the Inverter for more information. |  |  |  |
| 2 | 0X7722 | The Line 1 and Line 2 wires are swapped somewhere between the “N” terminals of the PWRcell ATS and the Protected Loads terminals of the inverter. | Check phase wiring does not cross over or change along each respective path from N1,N2 to L1,L2 of the Inverter. |
| 3 | 0x7723 | The PWRcell Inverter could not detect correct wiring. | Disable the inverter, then enable to clear the error and retry. |
| 4 | 0X7724 | The Line 1 and Line 2 wires are swapped somewhere between the “E” terminals of the PWRcell ATS and the Protected Loads terminals of the inverter. | Check phase wiring does not cross over or change along each respective path from E1,E2 to L1,L2 of the Inverter. |
| 5 | 0x7725 | The PWRcell Inverter could not detect correct wiring. | Disable the inverter, then enable to clear the error and retry. |
| 6 | 0X7726 | The inverter ATS did not transfer back to the utility/grid-connected position (UP position for ATS manual operation arm). | Verify wiring to the “N” terminals of the inverter ATS is correct. |
| Verify the Cat 5 cable for Inverter ATS Control is terminated properly at the inverter and the inverter ATS control board. |  |  |  |
| Verify that the factory wiring at the transfer mechanism closing coils and relays are securely fastened at the transfer mechanism. |  |  |  |
| 7 | 0X7727 | The inverter ATS did not transfer to the backup power source position (DOWN position for ATS manual operation arm). | Verify wiring to the “E” terminals of the inverter ATS is correct. |
| Verify the Cat 5 cable for Inverter ATS Control is terminated correctly at the inverter and the inverter ATS. Verify the wiring to the inverter AC Grid Connection terminals goes back to a connection point load side of the inverter ATS. |  |  |  |

* * *

This page intentionally left blank.

* * *

Section 7: Drawings and Diagrams

Installation Drawings

No. 0G6832-A: 100 A SE & non-SE / 150-200 A non-SE

* * *

No.10000012171-A: 150 / 200 A SE

GROUP G

EXPLODED VIEW:
150/200A SE XFER SWITCH
DRAWING #10000012171

* * *

No. A0001501194 (Part 1 of 3) — INTERCONNECTION XFER SW 100-200 A — PWRcell Inverter

GROUP G

PWRcell Automatic Transfer Switch Installation Manual

* * *

GROUP G

No. A0001501194 (Part 2 of 3) — INTERCONNECTION XFER SW 100-200 A — PWRcell Inverter

Page 2 of3

* * *

No. A0001501194 (Part 3 of 3) — INTERCONNECTION XFER SW 100-200 A — PWRcell Inverter

WIRING DIAGRAM INTERCONNECTION PWRCELL XFER SW 100-200A DRAWING #: A0001501194

* * *

This page intentionally left blank.

* * *

This page intentionally left blank.

* * *

This page intentionally left blank.

* * *

* * *

Part No. A0001501191 Rev. C 04/04/2024
©2024 Generac Power Systems, Inc.
All rights reserved.
Specifications are subject to change without notice.
No reproduction allowed in any form without prior written consent
from Generac Power Systems, Inc.

Generac Power Systems, Inc.
S45 W29290 Hwy. 59
Waukesha, WI 53189
1-888-GENERAC (1-888-436-3722)
[www.generac.com](http://www.generac.com/)

---

## Generac Standby Generator Wiring Diagram - Pinterest

**Source:** https://www.pinterest.com/ideas/generac-standby-generator-wiring-diagram/941701172812/

Discover Pinterest's best ideas and inspiration for Generac standby generator wiring diagram. Get inspired and try out new things. Last updated 2d.

---

## [PDF] Installation and Owner's Manual - Genset Services

**Source:** https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/0F3982.pdf

### Installation and Owner’s Manual

Air-cooled, Prepackaged Automatic Standby Generators Models: 04389-3 (6 kW NG, 7 kW LP) 04456-3 (12 kW NG, 12 kW LP) 04390-3 (13 kW NG, 15 kW LP)

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/51d0144fe4ca425e18a4d44ec5550bea9d24dccf974f84338fdfc37cce796a10.jpg)

 Not intended for use as Primary Power in place of utility or in  life-support applications.

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/bfcf5630df7368861789444ca60c50f41d46b1327b50fb8f78dbfc279d57fade.jpg)

### INTRODUCTION

Thank you for purchasing this model of the Guardian product line by Generac Power Systems Inc. This model is a compact, high performance, air-cooled, engine-driven generator designed to automatically supply electrical power to operate critical loads during a utility power failure.

This unit is factory installed in an all-weather, metal enclosure that is intended exclusively for outdoor installation. This generator will operate using either vapor withdrawn liquid propane (LP) or natural gas (NG).

### READ THIS MANUAL THOROUGHLY

If any portion of this manual is not understood, contact the nearest Authorized Dealer for starting, operating and servicing procedures.

Throughout this publication, and on tags and decals affixed to the generator, DANGER, WARNING, CAUTION and NOTE blocks are used to alert personnel to special instructions about a particular operation that may be hazardous if performed incorrectly or carelessly. Observe them carefully. Their definitions are as follows:

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/43883cf413fd0e20ef5bb37095449227ec359f3037de510e113427c8892d8ba6.jpg)

After this heading, read instructions that, if not strictly complied with, will result in serious personal injury, including death, in addition to property damage.

### WARNING

After this heading, read instructions that, if not strictly complied with, may result in serious personal injury or property damage.

### A CAUTION A

After this heading, read instructions that, if not strictly complied with, could result in damage to equipment and/or property.

NOTE:

After this heading, read explanatory statements that require special emphasis.

These safety warnings cannot eliminate the hazards that they indicate. Common sense and strict compliance with the special instructions while performing the service are essential to preventing accidents.

Four commonly used safety symbols accompany the DANGER, WARNING and CAUTION blocks. The type of information each indicates follows:

 This symbol points out important safety information that, if not followed, could endanger personal safety and/or property of others. This symbol points out potential explosion hazard.

 This symbol points out potential fire hazard.

 This symbol points out potential electrical shock hazard.

The operator is responsible for proper and safe use of the equipment. The manufacturer strongly recommends that the operator read this Owner's Manual and thoroughly understand all instructions before using this equipment. The manufacturer also strongly recommends instructing other users to properly start and operate the unit. This prepares them if they need to operate the equipment in an emergency.

### CONTENTS

This manual contains pertinent owner’s information, including warranty, electrical diagrams, exploded views and lists of repair parts, for three different models:

• 04389-3 – 6 kW NG, 7 kW LP, single-cylinder GH410 Engine

• 04456-3 – 12 kW NG, 12 kW LP, V-twin GT-990 Engine

• 04390-3 – 13 kW NG, 15 kW LP, V-twin GT-990 Engine

### OPERATION AND MAINTENANCE

It is the operator's responsibility to perform all safety checks, to make sure that all maintenance for safe operation is performed promptly, and to have the equipment checked periodically by an Authorized Dealer. Normal maintenance service and replacement of parts are the responsibility of the owner/operator and, as such, are not considered defects in materials or workmanship within the terms of the warranty. Individual operating habits and usage contribute to the need for maintenance service.

Proper maintenance and care of the generator ensures a minimum number of problems and keep operating expenses at a minimum. See an Authorized Dealer for service aids and accessories.

### HOW TO OBTAIN SERVICE

When the generator requires servicing or repairs, contact an Authorized Dealer for assistance. Service technicians are factory-trained and are capable of handling all service needs.

When contacting an Authorized Dealer about parts and service, always supply the complete model number and serial number of the unit as given on its data decal, which is located on the generator. See Figure 1.1 or Figure 1.2 in Section 1.6 for decal location.

Model No. Serial No.

### Air-cooled 7 kW, 12 kW and 15 kW Generators

### Introduction ............... ..Inside Front Cover

Read This Manual Thoroughly IFC Contents .. IFC Operation and Maintenance . IFC How to Obtain Service .. IFC Authorized Dealer Locator Number . IFC

### Safety Rules ............. .2

Standards Index .. 3

### Section 1 – General Information ............... 4

1.1 Unpacking/Inspection . 4

1.2 Protection Systems .. . 4

1.3 NEC Requirement for Arc Fault Circuit

Interruption Breaker for Bedrooms .. 4

1.4 The Generator . 5

1.5 Specifications ... . 6

1.6 System Set LED . . 7

1.7 Fuel Requirements and Recommendations ... 7

1.8 Fuel Consumption . . 7

1.9 Reconfiguring the Fuel System 7

1.10 Location . 8

1.11 Battery Installation .. . 9

1.12 The Battery . 9

### Section 2 – Post Installation Start-up and Adjustments ........ ....10

2.1 Before Initial Startup... 10

2.2 Check Transfer Switch Operation 10

2.3 Electrical Checks ... . 10

2.4 Generator Tests Under Load . . 11

2.5 Checking Automatic Operation . 11

2.6 Adjusting the Regulator

(Natural Gas Only) .. 12

2.7 Engine Governor Adjustment . . 13

2.8 Voltage Regulator Adjustment .. .14

### Section 3 – Operation ....... ...14

3.1 Break-in Procedure . .14

3.2 Using the Auto/Off/Manual Switch . . 14

3.3 Automatic Transfer Operation .. . 15

3.4 Sequence of Automatic Operation . . 15

3.5 Manual Transfer Operation .. .. 16

3.6 Setting the Exercise Timer .17

3.7 Protection Systems .. . 17

### Section 4 – Maintenance ...... ..18

4.1 Fuses .. .18

4.2 Checking the Engine Oil Level . . 18

4.3 Changing the Engine Oil .. . 19

4.4 Changing the Oil Filter . .19

4.5 Changing the Engine Air Cleaner .. . 19

4.6 Spark Plug(s) . . 20

4.7 Battery Maintenance .. . 20

4.8 Adjusting GH-410/GT-990/760

Valve Clearance ... . 21

4.9 Cooling System . . 21

4.10 Attention After Submersion .. . 22

4.11 Corrosion Protection .... . 22

4.12 Out of Service Procedure .. . 22

4.13 Service Schedule ... . 23

### Section 5 – Troubleshooting .............. .. 24

5.1 Troubleshooting Guide .. .24

Section 6 – Notes .... 25

Section 7 – Electrical Data . 28

Section 8 – Exploded Views and

Parts Lists . 42

Section 9 – Mounting Dimensions .. 63

Section 10 – Warranty . 64

SAVE THESE INSTRUCTIONS – The manufacturer suggests that these rules for safe operation be copied and posted near the unit’s installation site. Safety should be stressed to all operators and potential operators of this equipment.

### WARNING:

The engine exhaust from this product contains chemicals known to the state of California to cause cancer, birth defects or other reproductive harm.

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/6a23c6e9b1bbaf899acaca2e03d3f78d88080b66bd3d90ebd3022498263c4e96.jpg)

### WARNING:

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/8842972d6931e1ec953245b61f12643dd00079967d519d456637c093d8dc0fc9.jpg)

### This product contains or emits chemicals known to the state of California to cause cancer, birth defects or other reproductive harm.

Study these SAFETY RULES carefully before installing, operating or servicing this equipment. Become familiar with this Owner’s Manual and with the unit. The generator can operate safely, efficiently and reliably only if it is properly installed, operated and maintained. Many accidents are caused by failing to follow simple and fundamental rules or precautions.

The manufacturer cannot anticipate every possible circumstance that might involve a hazard. The warnings in this manual, and on tags and decals affixed to the unit are, therefore, not all-inclusive. If using a procedure, work method or operating technique the manufacturer does not specifically recommend, ensure that it is safe for others. Also make sure the procedure, work method or operating technique utilized does not render the generator unsafe.

### DANGER

 Despite the safe design of this generator, operating this equipment imprudently, neglecting its maintenance or being careless can cause possible injury or death. Permit only responsible and capable persons to operate or maintain this equipment.

 Potentially lethal voltages are generated by these machines. Ensure all steps are taken to render the machine safe before attempting to work on the generator.

 Parts of the generator are rotating and/or hot during operation. Exercise care near running generators.

###  GENERAL HAZARDS 

• For safety reasons, the manufacturer recommends that the installation, initial start-up and maintenance of this equipment is carried out by an Authorized Dealer.

The engine exhaust fumes contain carbon monoxide, which can be DEADLY. This dangerous gas, if breathed in sufficient concentrations, can cause unconsciousness or even death. This exhaust system must be installed properly, in strict compliance with applicable codes and standards. Following installation, do nothing that might render the system unsafe or in noncompliance with such codes and standards.

• Keep hands, feet, clothing, etc., away from drive belts, fans, and other moving or hot parts. Never remove any drive belt or fan guard while the unit is operating.

• Adequate, unobstructed flow of cooling and ventilating air is critical to correct generator operation. Do not alter the installation or permit even partial blockage of ventilation provisions, as this can seriously affect safe operation of the generator. The generator MUST be installed outdoors.

• When working on this equipment, remain alert at all times. Never work on the equipment when physically or mentally fatigued.

Inspect the generator regularly, and contact the nearest Authorized Dealer for parts needing repair or replacement.

• Before performing any maintenance on the generator, disconnect its battery cables to prevent accidental start up. Disconnect the cable from the battery post indicated by a NEGATIVE, NEG or (–) first. Reconnect that cable last.

• Never use the generator or any of its parts as a step. Stepping on the unit can stress and break parts, and may result in dangerous operating conditions from leaking exhaust gases, fuel leakage, oil leakage, etc.

###  ELECTRICAL HAZARDS 

• All generators covered by this manual produce dangerous electrical voltages and can cause fatal electrical shock. Utility power delivers extremely high and dangerous voltages to the transfer switch as does the standby generator when it is in operation. Avoid contact with bare wires, terminals, connections, etc., while the unit is running. Ensure all appropriate covers, guards and barriers are in place before operating the generator. If work must be done around an operating unit, stand on an insulated, dry surface to reduce shock hazard. Do not handle any kind of electrical device while standing in water, while barefoot, or while hands or feet are wet. DANGEROUS ELECTRICAL SHOCK MAY RESULT.

• The National Electrical Code (NEC) requires the frame and external electrically conductive parts of the generator to be connected to an approved earth ground. Local electrical codes also may require proper grounding of the generator electrical system.

• After installing this home standby electrical system, the generator may crank and start at any time without warning. When this occurs, load circuits are transferred to the STANDBY (generator) power source. To prevent possible injury if such a start and transfer occur, always set the generator’s Auto/Off/Manual switch to its OFF position before working on equipment and remove the 7.5A and 15A fuses from the generator control panel.

• In case of accident caused by electric shock, immediately shut down the source of electrical power. If this is not possible, attempt to free the victim from the live conductor. AVOID DIRECT CONTACT WITH THE VICTIM. Use a nonconducting implement, such as a dry rope or board, to free the victim from the live conductor. If the victim is unconscious, apply first aid and get immediate medical help. Never wear jewelry when working on this equipment. Jewelry can conduct electricity resulting in electric shock, or may get caught in moving components causing injury.

### FIRE HAZARDS

• For fire safety, the generator must be installed and maintained properly. Installation always must comply with applicable codes, standards, laws and regulations. Adhere strictly to local, state and national electrical and building codes. Comply with regulations the Occupational Safety and Health Administration (OSHA) has established. Also, ensure that the generator is installed in accordance with the manufacturer’s instructions and recommendations. Following proper installation, do nothing that might alter a safe installation and render the unit in noncompliance with the aforementioned codes, standards, laws and regulations.

• Keep a fire extinguisher near the generator at all times. Extinguishers rated “ABC” by the National Fire Protection Association are appropriate for use on the standby electric system. Keep the extinguisher properly charged and be familiar with its use. Consult the local fire department with any questions pertaining to fire extinguishers.

### EXPLOSION HAZARDS

• Do not smoke around the generator. Wipe up any fuel or oil spills immediately. Ensure that no combustible materials are left in the generator compartment, or on or near the generator, as FIRE or EXPLOSION may result. Keep the area surrounding the generator clean and free from debris.

• Gaseous fluids such as natural gas and liquid propane (LP) gas are extremely EXPLOSIVE. Install the fuel supply system according to applicable fuel-gas codes. Before placing the home standby electric system into service, fuel system lines must be properly purged and leak tested according to applicable code. After installation, inspect the fuel system periodically for leaks. No leakage is permitted.

### STANDARDS INDEX

In the absence of pertinent standards, codes, regulations and laws, the published information listed below may be used as installation guide for this equipment.

1. NFPA No. 37, STATIONARY COMBUSTION ENGINES AND GAS TURBINES, available from the National Fire Protection Association, 470 Atlantic Avenue, Boston, MA 02210.
2. NFPA No. 76A, ESSENTIAL ELECTRICAL SYSTEMS FOR HEALTH CARE FACILITIES, available same as Item 1.
3. NFPA No. 54, NATIONAL FUEL GAS CODE, available same as Item 1.
4. NFPA No. 58, AMERICAN NATIONAL STANDARD FOR STORAGE AND HANDLING OF LIQUEFIED PETROLEUM GAS, available same as Item 1.
5. NFPA No. 70, NFPA HANDBOOK OF NATIONAL ELECTRIC CODE, available same as Item 1.
6. Article X, NATIONAL BUILDING CODE, available from the American Insurance Association, 85 John Street, New York, N.Y. 10038.
7. AGRICULTURAL WIRING HANDBOOK, available from the Food and Energy Council, 909 University Avenue, Columbia, MO 65201.
8. ASAE EP-3634, INSTALLATION AND MAINTENANCE OF FARM STANDBY ELECTRICAL SYSTEMS, available from the American Society of Agricultural Engineers, 2950 Niles Road, St. Joseph, MI 49085.
9. NFPA No. 30, FLAMMABLE AND COMBUSTIBLE LIQUIDS CODE, available same as Item 1.

### DANGER

 Only qualified electricians or contractors should attempt such installations, which must comply strictly with applicable codes, standards and regulations.

### 1.1 UNPACKING/INSPECTION

After unpacking, carefully inspect the contents for damage.

• This standby generator set has been factory supplied with a weather protective enclosure that is intended for outdoor installation only.

This UL listed standby generator set is packaged with an automatic transfer switch with built in load center. The combination transfer switch and load center is pre-wired with a two foot and 30 foot conduit. Circuit breakers for emergency circuit connections are included.

This UL listed, 2-pole switch is rated at 100 AC amperes at 250 volts maximum. This transfer switch is for indoor use only.

### ! WARNING

 If this generator is used to power electrical load circuits normally powered by a utility power source, it is required by code to install a transfer switch. The transfer switch must effectively isolate the electrical system from the utility distribution system when the generator is operating (NEC 700, 701 & 702). Failure to isolate an electrical system by such means will result in damage to the generator and also may result in injury or death to utility power workers due to backfeed of electrical energy.

If any loss or damage is noted at time of delivery, have the person(s) making the delivery note all damage on the freight bill or affix their signature under the consignor's memo of loss or damage.

If a loss or damage is noted after delivery, separate the damaged materials and contact the carrier for claim procedures.

“Concealed damage” is understood to mean damage to the contents of a package that is not in evidence at the time of delivery, but is discovered later.

### 1.2 PROTECTION SYSTEMS

Unlike an automobile engine, the generator may have to run for long periods of time with no operator present to monitor engine conditions. For that reason, the engine is equipped with the following systems that protect it against potentially damaging conditions:

1. Low Oil Pressure Sensor 3. Overcrank
2. High Temperature Sensor 4. Overspeed

There are LED readouts on the control panel to notify personnel that one of these faults has occurred. There is also a “System Set” LED that is lit when all of the conditions describe in Section 1.3 are true.

### 1.3 NEC REQUIREMENT FOR ARC FAULT CIRCUIT INTERRUPTION BREAKER FOR BEDROOMS

In 2001, the National Electric Code (NEC) introduced a requirement for new construction. This new requirement indicates the need for Arc Fault Circuit Interrupters to be used to protect the complete branch circuit that feeds a dwelling bedroom. The actual NEC requirement is indicated below.

### 1.3.1 SECTION 210.12 ARC FAULT CIRCUIT INTERRUPTER PROTECTION

1. Definition: An arc fault circuit interrupter is a device intended to provide protection from the effects of arc faults by recognizing characteristics unique to arcing and by functioning to de-energize the circuit when an arc fault is detected.
2. Dwelling Unit Bedrooms: All branch circuits that supply 125 volt, single-phase, 15 and 20 ampere outlets installed in dwelling unit bedrooms shall be protected by an arc fault circuit interrupter listed to provide protection of the entire branch circuit.

Section 210.12 requires that AFCI protection be provided on branch circuits that supply outlets (receptacle, lighting, etc.) in dwelling bedrooms. The requirement is limited to 15 and 20 ampere, 125 volt circuits. There is no prohibition against providing AFCI protection on other circuits or in locations other than bedrooms. Because circuits are often shared between a bedroom and other areas such as closets and hallways, providing AFCI protection on the complete circuit would comply with 210.12.

If during the installation of the home standby system the decision is made to provide back up power to a bedroom branch circuit, then the circuit breaker in the transfer switch should be replaced with an Arc Fault Circuit Interrupter.

It is most important that breakers only be switched like for like. For instance, if replacing a 15A breaker, it MUST be replaced with a 15A AFCI breaker. Likewise, a 20A breaker MUST be replaced with a 20A AFCI.

These AFCI breakers are available at the nearest Home Depot or hardware store.

|     |     |
| --- | --- |
| Siemens Item # | Description |
| 9115AF | 15A Single Pole AFCI |
| 9120AF | 20A Single Pole AFCI |

### 1.4 THE GENERATOR

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/7a599cb54b3d68f8362af5098f8bd6539d6a130a0a41f26a91fdc56d1e97ef65.jpg)

Figure $1 . 1 - 7 k W ,$ Single Cylinder GH-410 Engine

![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/9af4620c02365962d42cee197be3342c731c87b34d02b8bf4a18a0f2c75b7c8e.jpg)

Figure 1.2 – 12 kW and 15 kW, V-twin GT-990/760 Engine

### 1.5 SPECIFICATIONS

### 1.5.1 GENERATOR

|     |     |     |     |
| --- | --- | --- | --- |
|  | Model 04389 | Model 04456 | Model 04390 |
| Rated Max. Continuous PowerCapacity (Watts\*) | 6,000 NG/7,000 LP | 12,000 NG/12,000 LP | 13,000 NG/15,000 LP |
| Rated Voltage | 120/240 | 120/240 | 120/240 |
| Rated Max. Continuous LoadCurrent (Amps) |
| 120 Volts\*\* | 50.0 NG/58.3 LP | 100.0 NG/100.0 LP | 108.3 NG/125.0 LP |
| 240 Volts | 25.0 NG/29.2 LP | 50.0 NG/50.0 LP | 54.2 NG/62.5 LP |
| Main Line Circuit Breaker | 30 Amp | 50 Amp | 65 Amp |
| Phase | 1 | 1 | 1 |
| Number of Rotor Poles | 2 | 2 | 2 |
| Rated AC Frequency | 60 Hz | 60 Hz | 60 Hz |
| Power Factor | 1 | 1 | 1 |
| Recommended Air Filter | Part # 0C8127 | Part # 0C8127 | Part # 0C8127 |
| Battery Requirement | Group 26/26R12 Volts and350 Cold-crankingAmperes Minimum | Group 26/26R12 Volts and525 Cold-crankingAmperes Minimum | Group 26/26R12 Volts and525 Cold-crankingAmperes Minimum |
| Weight | 375 Pounds | 470 Pounds | 487 Pounds |
| Output Sound Level @23ft (7m) at full load | 68 db (A) | 70.5 db (A) | 71.5 db (A) |
| Normal Operating Range -20°F (-28.8°C) to 104°F (40°C) |

$^ \*$ Maximum wattage and current are subject to and limited by such factors as fuel Btu content, ambient temperature, altitude, engine power and condition, etc. Maximum power decreases about 3.5 percent for each 1,000 feet above sea level; and also will decrease about 1 percent for each $6 ^ { \\circ } \\mathrm { C }$ $1 0 ^ { \\circ } \\mathrm { F } )$ above $1 6 ^ { \\circ } \\mathrm { C }$ $\[ 6 0 ^ { \\circ } \\mathrm { F } )$ ambient temperature. \*\* Load current values shown for 120 volts are maximum TOTAL values for two separate circuits. The maximum current in each circuit must not exceed the value stated for 240 volts.\
\
### 1.5.2 ENGINE\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
|  | Model 04389 | Model 04456 | Model 04390 |\
| Type of Engine | GH-410 | GT-760 | GT-990 |\
| Number of Cylinders | 1 | 2 | 2 |\
| Rated Horsepower | 14.5 @ 3,600 rpm | 26 @ 3,600 rpm | 30 @ 3,600 rpm |\
| Displacement | 410cc | 763cc | 992cc |\
| Cylinder Block | Aluminum w/Cast | Aluminum w/Cast | Aluminum w/Cast |\
|  | Iron Sleeve | Iron Sleeve | Iron Sleeve |\
| Valve Arrangement | Overhead Valves | Overhead Valves | Overhead Valves |\
| Ignition System | Solid-state w/Magneto | Solid-state w/Magneto | Solid-state w/Magneto |\
| Recommended Spark Plug | RC14YC | RC12YC | RC12YC |\
| Spark Plug Gap | 0.76 mm (0.030 inch) | 0.508 mm (0.020 inch) | 0.508 mm (0.020 inch) |\
| Compression Ratio | 8.6:1 | 9.5:1 | 9.5:1 |\
| Starter | 12 Vdc | 12 Vdc | 12Vdc |\
| Oil Capacity Including Filter | Approx. 1.5 Qts | Approx. 1.7 Qts | Approx. 1.7 Qts |\
| Recommended Oil Filter | Part # 070185B | Part # 070185B | Part # 070185B |\
| Recommended Air Filter | Part # 0C8127 | Part # 0C8127 | Part # 0C8127 |\
| Operating RPM | 3,600 | 3,600 | 3,600 |\
\
### 1.6 SYSTEM SET LED\
\
The “System Set” LED is lit when all of the following conditions are true:\
\
1. The AUTO/OFF/MANUAL switch is set to the AUTO position.\
2. The utility voltage being supplied to the unit is being sensed by the PCB. If the utility sense voltage is not connected to the unit or if it is below 168 volts AC, then the system set light will flash rapidly. This indicates that if the AUTO/OFF/ MANUAL switch is placed in the Auto position, the generator will start.\
3. The “Not In Auto” dip switch is set to the OFF position on the control board.\
4. No alarms are present, for example, low oil pressure, high temperature, etc.\
\
### 1.7 FUEL REQUIREMENTS AND RECOMMENDATIONS\
\
With LP gas, use only the vapor withdrawal system. This type of system uses the vapors formed above the liquid fuel in the storage tank.\
\
The engine has been fitted with a fuel carburetion system that meets the specifications of the 1997 California Air Resources Board for tamper-proof dual fuel systems. The unit will run on natural gas or LP gas, but it has been factory set to run on natural gas. Should the primary fuel need to be changed to LP gas, the fuel system needs to be reconfigured. See Section 1.9 for instructions on reconfiguration of the fuel system.\
\
Recommended fuels should have a Btu content of at least 1,000 Btus per cubic foot for natural gas; or at least 2,520 Btus per cubic foot for LP gas. Ask the fuel supplier for the Btu content of the fuel.\
\
Required fuel pressure for natural gas is 5 inches to 7 inches water colum (0.18 to 0.25 psi); and for liquid propane, 10 inches to 12 inches of water column (0.36 to 0.43 psi).\
\
### NOTE:\
\
Any piping used to connect the generator to the fuel supply should be of adequate size to ensure the fuel pressure NEVER drops below 4 inches water colum for natural gas or 10 inches water column for liquid propane for all load ranges.\
\
### 1.8 FUEL CONSUMPTION\
\
|     |     |     |     |     |\
| --- | --- | --- | --- | --- |\
| Model # | Nat. Gas (\*) | LP Vapor (\*\*) |\
|  | 1/2 Load | Full Load | 1/2 Load | Full Load |\
| 04389 | 66 | 119 | 0.82/30 | 1.47/54 |\
| 04456 | 152 | 215 | 1.53/56 | 2.08/76 |\
| 04390 | 156 | 220 | 1.58/58 | 2.40/88 |\
\
\*Natural gas is in cubic feet per hour. $^ { \* \* } \\mathrm { L P }$ is in gallons per hour/cubic feet per hour. \*\*\* Values given are approximate.\
\
Gaseous fuels such as natural gas and liquid propane (LP) gas are highly explosive. Even the slightest spark can ignite such fuels and cause an explosion. No leakage of fuel is permitted. Natural gas, which is lighter than air, tends to collect in high areas. LP gas is heavier than air and tends to settle in low areas.\
\
### 1.9 RECONFIGURING THE FUEL SYSTEM\
\
1.9.1 7 KW, 410CC ENGINE\
\
To reconfigure the fuel system from NG to LP, follow these steps (Figure 1.3):\
\
### NOTE:\
\
The primary regulator for the propane supply is NOT INCLUDED with the generator. A fuel pressure of 10 to 12 inches of water column (0.36 to 0.43 psi) to the fuel inlet of the generator MUST BE SUPPLIED.\
\
01. Turn off the main gas supply (if connected).\
02. Open the roof and remove the door.\
03. Remove the battery (if installed).\
04. Disconnect wire $# 0$ and wire #14 from the gas solenoid on top of the demand regulator.\
05. Remove the carburetor fuel hose from the outlet port of the demand regulator.\
06. Remove the demand regulator by removing the fastener that retains the regulator mounting bracket.\
07. Remove the square headed steel pipe plug from outlet port $# 1$ and the brass hose barb fitting from outlet port $# 2$ .\
08. Refit the brass hose barb fitting to outlet port $# 1$ and the square headed steel pipe plug to outlet port $# 2$ .\
09. Reverse procedure steps 1-5 to reinstall demand regulator.\
10. Take the plastic plug supplied in the poly-bag with the generator and press it into the $3 / 4 ^ { \\mathrm { { \\mathfrak { n } } } }$ hole on the bottom of the air cleaner base (Figure 4.6).\
11. Reverse the procedure to convert back to natural gas.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/6ab8be232d2bf8d2ca8046f7386739c0afca2f91d511c4d77071bcabf749b9e5.jpg)\
\
Figure 1.3 – Demand Regulator\
\
### 1.9.2 12KW AND 15KW, V-TWIN ENGINES\
\
To reconfigure the fuel system from NG to LP, follow these steps:\
\
### NOTE:\
\
The primary regulator for the propane supply is NOT INCLUDED with the generator. A fuel pressure of 10 to 12 inches of water column (0.36 to 0.43 psi) to the fuel inlet of the generator MUST BE SUPPLIED.\
\
01. Turn off the gas supply. (if connected)\
02. Open the roof and remove the door.\
03. Remove the battery. (if installed)\
04. Remove the engine air in baffle located on the lefthand side of the battery compartment. Two M6 screws are located on top of the baffle and two M6 screws are located on the inside of the baffle towards the back.\
05. Remove the small hose clamp and hose from the fuel regulator. It may be necessary to pry the hose off of the brass fitting using a screwdriver to gently lift up the hose edge.\
06. Remove the small brass hose fitting from the regulator casting.\
07. Place the small fuel jet, thread side first, into the threaded hole originally occupied by the brass hose fitting (Figure 1.4).\
08. Using a short No. 2 Phillips screw driver, thread the small fuel jet into the regulator casting. Do not over tighten.\
09. Apply thread sealant to the threads of the hose fitting and replace it into the regulator body.\
10. Re-attach the small hose and hose clamp and tighten as necessary.\
11. Replace the engine air in baffle using the four M6 screws.\
12. Identify both brass adjustment screws on the regulator.\
\
### NOTE:\
\
One adjustment screw can be accessed from the front of the unit and the second can be accessed from the back of the unit enclosure by removing the plastic hole plug. The screw can be turned with a long flat blade screwdriver.\
\
13. To adjust the system to run on LP fuel, turn BOTH adjuster screws 1/2 TURN CLOCKWISE. The system should now be set for maximum power and best perfomance. DO NOT, UNDER ANY CIRCUMSTANCES, REMOVE THE SET PINS FROM THE REGULATOR HOUSING. THIS WILL VOID THE WARRANTY.\
\
14. It may be necessary to make minor adjustments to the preset adjustment screw settings to achieve maximum power, particularly at higher altitudes. If experiencing problems with the unit producing maximum power, follow the procedure in Section 2.6 (Adjusting the Fuel Regulator).\
\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/677bc4335ea87e2b8161ffb01d572f6a1a5a7d6fd6e2d916a5785b5d3f66c68b.jpg)\
\
Figure 1.4 - Demand Regulator\
\
### 1.10 LOCATION\
\
### 1.10.1 GENERATOR\
\
Install the generator set, in its protective enclosure, outdoors, where adequate cooling and ventilating air is always available. Consider these factors:\
\
• Install the unit where air inlet and outlet openings will not become obstructed by leaves, grass, snow, etc. If prevailing winds will cause blowing or drifting, consider using a windbreak to protect the unit.\
\
• Install the generator on high ground where water levels will not rise and endanger it.\
\
• Allow sufficient room on all sides of the generator for maintenance and servicing. A good rule is to allow three feet of space on all sides.\
\
Where strong prevailing winds blow from one direction, face the generator air inlet openings to the prevailing winds.\
\
• Install the generator as close as possible to the fuel supply, to reduce the length of piping.\
\
Install the generator as close as possible to the transfer switch. HOWEVER, REMEMBER THAT LAWS OR CODES MAY REGULATE THE DISTANCE.\
\
The genset must be installed on a level surface. The base frame must be level within two (2) inches all around.\
\
### 1.10.2.1 7 kW, 12 kW and 15 kW Units\
\
The transfer switch shipped with this generator is enclosed in a NEMA 1 enclosure. This type of enclosure is intended for indoor use only. Follow these rules:\
\
• Install the transfer switch indoors on a firm, sturdy supporting structure.\
\
To prevent switch distortion, level the switch if necessary. This can be done by placing washers between the switch enclosure and mounting surface.\
\
• Never install the switch where water or any corrosive substance might drip onto the enclosure.\
\
• Protect the switch at all times against excessive moisture, dust, dirt, lint, construction grit and corrosive vapors.\
\
### 4! WARNING\
\
If the AUTO/OFF/MANUAL switch is not set to its OFF position, the generator can crank and start as soon as the battery cables are connected. If the utility power supply is not turned off, sparking can occur at the battery posts and cause an explosion.\
\
### 1.11 BATTERY INSTALLATION\
\
Fill the battery with the proper electrolyte fluid if necessary and have the battery fully charged before installing it.\
\
Before installing and connecting the battery, complete the following steps:\
\
1. Set the generator's AUTO/OFF/MANUAL switch to OFF.\
2. Turn off utility power supply to the transfer switch.\
3. Remove the 7.5A and 15A fuses from the generator control panel.\
\
Battery cables were factory connected at the generator (Figure 1.5). Connect cables to battery posts as follows:\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/873d0709ece4783546b77187c09d904d19e20697c9812c7df96293513c1a93ec.jpg)\
\
Figure 1.5 – Battery Cable Connections\
\
4. Connect the red battery cable (from starter contactor) to the battery post indicated by a positive, POS or $( + )$ .\
5. Connect the black battery cable (from frame ground) to the battery post indicated by a negative, NEG or (—).\
\
### NOTE:\
\
### Damage will result if battery connections are made in reverse.\
\
### NOTE:\
\
The generator is equipped with a battery trickle charger that is active when the unit is set up for automatic operation. With the battery installed and utility power source voltage available to the transfer switch, the battery receives a trickle charge while the engine is not running, to prevent self-discharge. The trickle charger is designed to help extend the life of the battery by maintaining the battery when the unit is not running. The trickle charge feature cannot be used to recharge a discharged battery.\
\
### 1.12 THE BATTERY DANGER\
\
Do not dispose of the battery in a fire. The battery is capable of exploding.\
\
 A battery presents a risk of electrical shock and high short circuit current. The following precautions are to be observed when working on batteries:\
\
• Remove the 7.5A and 15A fuses from the generator control panel.\
\
• Remove watches, rings or other metal objects; • Use tools with insulated handles;\
\
• Wear rubber gloves and boots;\
\
• Do not lay tools or metal parts on top of the battery; and\
\
• Disconnect charging source prior to connecting or disconnecting battery terminals.\
\
### WARNING\
\
 Do not open or mutilate the battery. Released electrolyte has been known to be harmful to the skin and eyes, and to be toxic.\
\
 The electrolyte is a dilute sulfuric acid that is harmful to the skin and eyes. It is electrically conductive and corrosive.\
\
The following procedures are to be observed:\
\
• Wear full eye protection and protective clothing;\
\
• Where electrolyte contacts the skin, wash it off immediately with water;\
\
• Where electrolyte contacts the eyes, flush thoroughly and immediately with water and seek medical attention; and\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators\
\
• Spilled electrolyte is to be washed down with an acid neutralizing agent. A common practice is to use a solution of 1 pound (500 grams) bicarbonate of soda to 1 gallon (4 liters) of water. The bicarbonate of soda solution is to be added until the evidence of reaction (foaming) has ceased. The resulting liquid is to be flushed with water and the area dried.\
\
Lead-acid batteries present a risk of fire because they generate hydrogen gas. The following procedures are to be followed:\
\
• DO NOT SMOKE when near the battery;\
\
• DO NOT cause flame or spark in battery area; and\
\
• Discharge static electricity from body before touching the battery by first touching a grounded metal surface.\
\
 Be sure the AUTO/OFF/MANUAL switch is set to the OFF position before connecting the battery cables. If the switch is set to AUTO or MANUAL, the generator can crank and start as soon as the battery cables are connected. Be sure the utility power supply is turned off and the 7.5A and 15A fuses are removed from the generator control panel, or sparking may occur at the battery posts as the cables are attached and cause an explosion.\
\
Servicing of the battery is to be performed or supervised by personnel knowledgeable of batteries and the required precautions. Keep unauthorized personnel away from batteries.\
\
When replacing the battery, use the following type of battery: Group 26/26R 12-volt DC, negative ground battery with a rating of 350 cold-cranking amps minimum for 7 kW; 525 cold-cranking amps minimum for 12 and $1 5 ~ \\mathrm { k W }$ at $- 1 7 . 8 ^ { \\mathrm { o } }$ C $( 0 ^ { \\mathrm { o } } \ : \\mathrm { F } )$ minimum. When using a maintenance-free battery, it is not necessary to check the specific gravity or electrolyte level. Have these procedures performed at the intervals specified in the “Service Schedule.” A negative ground system is used. Battery connections are shown on the wiring diagrams. Make sure the battery is correctly connected and terminals are tight. Observe battery polarity when connecting the battery to the generator set.\
\
### 2.1 BEFORE INITIAL START-UP\
\
Before starting, complete the following:\
\
1. Set the generator’s main circuit breaker to its OFF (or open) position.\
2. Set the generator's AUTO/OFF/MANUAL switch to the OFF position.\
3. Turn OFF the utility power supply to the transfer switch using the means provided (such as the utility main line circuit breaker).\
4. Turn OFF all loads connected to the transfer switch terminals T1 and T2.\
5. Check the engine crankcase oil level and, if necessary, fill to the dipstick FULL mark with the recommended oil. Do not fill above the FULL mark.\
6. Check the fuel supply. Gaseous fuel lines must have been properly purged and leak tested in accordance with applicable fuel-gas codes. All fuel shutoff valves in the fuel supply lines must be open.\
\
### A CAUTION A\
\
Never operate the engine with the oil level below the “Add” mark on the dipstick. Doing this could damage the engine.\
\
### 2.2 CHECK TRANSFER SWITCHOPERATION\
\
Refer to Section 3.5, of the owner’s manual for manual operation procedures.\
\
### DANGER\
\
 Do not attempt manual transfer switch operation until all power voltage supplies to the transfer switch have been positively turned off. Failure to turn off all power voltage supplies will result in extremely hazardous and possibly fatal electrical shock.\
\
### 2.3 ELECTRICAL CHECKS\
\
Complete electrical checks as follows:\
\
1. Set the generator's main circuit breaker to its OFF (or open) position.\
2. Set the generator's Auto/Off/Manual switch to the OFF position.\
3. Turn OFF all loads connected to the transfer switch terminals T1 and T2.\
4. Turn on the utility power supply to the transfer switch using the means provided (such as a utility main line circuit breaker).\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/7a72b45c3938ed2dd34f82455735005625bf81674c23c373bbb1647a7fde94f2.jpg)\
\
The transfer switch is now electrically “hot.” Contact with “hot” parts will result in extremely hazardous and possibly fatal electrical shock. Proceed with caution.\
\
5. Use an accurate AC voltmeter to check utility power source voltage across transfer switch terminals N1 and N2. Nominal line-to-line voltage should be 240 volts AC.\
6. Check utility power source voltage across terminals N1 and the transfer switch neutral lug; then across terminal N2 and neutral. Nominal line-toneutral voltage should be 120 volts AC.\
7. When certain that utility supply voltage is compatible with transfer switch and load circuit ratings, turn OFF the utility power supply to the transfer switch.\
8. On the generator panel, set the AUTO/OFF/ MANUAL switch to MANUAL. The engine should crank and start.\
9. Let the engine warm up for about five minutes to allow internal temperatures to stabilize. Then, set the generator’s main circuit breaker to its ON (or CLOSED) position.\
\
### ! DANGER\
\
 Proceed with caution! Generator power voltage is now supplied to the transfer switch. Contact with live transfer switch parts will result in dangerous and possibly fatal electrical shock.\
\
10\. Connect an accurate AC voltmeter and a frequency meter across transfer switch terminal lugs E1 and E2. Voltage should be 242-252 volts; frequency should read about 61-63 Hertz.\
\
11\. Connect the AC voltmeter test leads across terminal lug E1 and neutral; then across E2 and neutral. In both cases, voltage reading should be 121-126 volts AC.\
\
12\. Set the generator’s main circuit breaker to its OFF (or open) position. Let the engine run at noload for a few minutes to stabilize internal engine generator temperatures.\
\
13\. Set the generator's AUTO/OFF/MANUAL switch to OFF. The engine should shut down.\
\
### NOTE:\
\
It is important not to proceed until certain that generator AC voltage and frequency are correct and within the stated limits. Generally, if both AC frequency and voltage are high or low, the engine governor requires adjustment. If frequency is correct, but voltage is high or low, the generator’s voltage regulator requires adjustment.\
\
### 2.4 GENERATOR TESTS UNDER LOAD\
\
To test the generator set with electrical loads applied, proceed as follows:\
\
1. Set generator’s main circuit breaker to its OFF (or OPEN) position.\
2. Turn OFF all loads connected to the transfer switch terminals T1 and T2.\
3. Set the generator's AUTO/OFF/MANUAL switch to OFF.\
4. Turn OFF the utility power supply to the transfer switch, using the means provided (such as a utility main line circuit breaker).\
\
### WARNING\
\
 Do not attempt manual transfer switch operation until all power voltage supplies to the transfer switch have been positively turned off. Failure to turn off all power voltage supplies will result in extremely hazardous and possibly fatal electrical shock.\
\
5\. Manually set the transfer switch to the STANDBY position, i.e., load terminals connected to the generator's E1/E2 terminals. The transfer switch operating lever should be down.\
\
6\. Set the generator's AUTO/OFF/MANUAL switch to MANUAL. The engine should crank and start immediately.\
\
7\. Let the engine stabilize and warm up for a few minutes.\
\
8\. Set the generator’s main circuit breaker to its ON (or closed) position. Loads are now powered by the standby generator.\
\
9\. Turn ON electrical loads connected to transfer switch T1 and T2. Apply an electrical load equal to the full rated wattage/amperage capacity of the installed generator.\
\
10\. Connect an accurate AC voltmeter and a frequency meter across terminal lugs E1 and E2. Voltage should be greater than 230 volts; frequency should be greater than 58 Hertz.\
\
11\. Let the generator run at full rated load for 20-30 minutes. Listen for unusual noises, vibration or other indications of abnormal operation. Check for oil leaks, evidence of overheating, etc.\
\
12\. When testing under load is complete, turn OFF electrical loads.\
\
13\. Set the generator's main circuit breaker to its OFF (or OPEN) position.\
\
14\. Let the engine run at no-load for a few minutes.\
\
15\. Set the AUTO/OFF/MANUAL switch to OFF. The engine should shut down.\
\
### 2.5 CHECKING AUTOMATICOPERATION\
\
To check the system for proper automatic operation, proceed as follows:\
\
1. Set generator’s main circuit breaker to its OFF (or OPEN) position.\
2. Check that the AUTO/OFF/MANUAL switch is set to OFF.\
3. Turn OFF the utility power supply to the transfer switch, using means provided (such as a utility main line circuit breaker).\
4. Manually set the transfer switch to the UTILITY position, i.e., load terminals connected to the utility power source side.\
5. Turn ON the utility power supply to the transfer switch, using the means provided (such as a utility main line circuit breaker).\
6. Set the AUTO/OFF/MANUAL switch to AUTO. The system is now ready for automatic operation.\
7. Turn OFF the utility power supply to the transfer switch.\
\
With the AUTO/OFF/MANUAL switch at AUTO, the engine should crank and start when the utility source power is turned OFF. After starting, the transfer switch should connect load circuits to the standby side. Let the system go through its entire automatic sequence of operation.\
\
With the generator running and loads powered by generator AC output, turn ON the utility power supply to the transfer switch. The following should occur:\
\
• After about 13 seconds, the switch should transfer loads back to the utility power source. • About one minute after retransfer, the engine should shut down.\
\
### 2.6 ADJUSTING THE REGULATOR (NATURAL GAS ONLY)\
\
Although the generator has been factory set to provide maximum power, it may be necessary in some areas to adjust this setting. Because natural gas has different BTU or power content across the country the engine may not perform as designed.\
\
If experiencing engine problems at high or full load conditions follow these steps. It will require a frequency meter to perform this procedure.\
\
1. Turn off utility power to the main distribution panel in the house. This can be done by switching the service main breaker to the off or open position.\
2. Allow the generator to start. Before loading the generator, confirm that the No Load Frequency, with the roof open and door off, is set to 63-63.5 Hz. Transfer load to emergency circuits.\
3. Turn on appliances, lights, pumps, etc., that are on the emergency circuits in an attempt to fully load the generator. Be cautious not to overload the generator. Use the following chart as a guide:\
\
|     |     |     |\
| --- | --- | --- |\
| Unit | 120 Volts | 240 Volts |\
| 7 kW | 50.0amps | 25.0amps |\
| 12 kW | 100.0amps | 50.0amps |\
| 13 kW | 108.3amps | 54.1amps |\
\
4. When 3/4 load has been achieved. Connect a frequency meter to the output lugs of the generator’s main line circuit breaker.\
\
5. The fuel regulator is fitted with one $\\left( 7 \\mathrm { k W } \\right)$ , or two $( 1 2 ~ & ~ 1 5 ~ \\mathrm { \\bar { k } W } )$ adjustment screws. While watching the frequency meter, slowly turn the adjustment screws clockwise or counterclockwise one at a time until the highest frequency is read on the meter. Only limited adjustment is available because of the set pin. Under no circumstances should any of the pins be removed (Figures 2.1 and 2.2).\
\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/c8ad6c5457ed87a9b46f208e67d6dec1dbf4d72995266d23b5ee35649091cc27.jpg)\
\
Figure 2.1 — Dual Fuel Regulators\
\
6. When the highest frequency is reached maximum power has been set. From this point turn both adjustment screws 1/4 turn counterclockwise. The regulator is now set.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/baa66e8a65425f5efde70a155a08118dc2c91a7b1d3766bd23cd242889041074.jpg)\
\
Figure 2.2 — Placement of Regulator\
\
7. Turn utility power to the main distribution panel back on. This can be done by switching the service main breaker to the on or closed position. Allow the generator to shut down.\
\
### ! WARNING\
\
 Do not make any unnecessary adjustments. Factory settings are correct for most applications. However, when making adjustments, be careful to avoid overspeeding the engine.\
\
If this procedure or the equipment are not available, locate the nearest Dealer and they can perform the adjustments.\
\
### NOTE:\
\
A service fee may be charged for this adjustment.\
\
### 2.7 ENGINE GOVERNOR ADJUSTMENT\
\
If both AC frequency and voltage are correspondingly high or low, adjust the engine governor as follows:\
\
### 2.7.1 7 KW UNITS\
\
1. Loosen the governor clamp bolt (Figures 2.3).\
2. Hold the governor lever at its wide open throttle position, and rotate the governor shaft clockwise as far as it will go. Then, tighten the governor lever clamp bolt to 70 inch-pounds $\\left( 8 ~ \\mathrm { N \\mathrm { { - } m } } \\right)$ ).\
3. Start the generator; let it stabilize and warm up at no-load.\
4. Connect a frequency meter across the generators AC output leads.\
5. Turn the primary adjust screw to obtain a frequency reading of 61.5 Hertz. Turn the secondary adjust screw to obtain a frequency of $6 2 . 5 \ \\mathrm { H z }$ .\
6. When frequency is correct at no load, check the AC voltage reading. If voltage is incorrect, the voltage regulator may require adjustment.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/8af3afaae338f1ff2d04243cb4db5776b645ad315de04ed66bd3f082ec5351d2.jpg)\
\
Figure 2.3 — Engine Governor Adjustment Single Cylinder Engines\
\
### 2.7.2 12 KW AND 15 KW UNITS\
\
1. Loosen governor clamp bolt (See Figure 2.4).\
2. Completely remove the idle spring.\
3. With governor arm at wide open throttle position, rotate governor shaft fully clockwise. Tighten clamp bolt to 84 inch-pounds.\
4. Start unit and apply full load. Use full load speed adjust screw (Figure 2.5) to adjust frequency to $5 8 \\mathrm { ~ H z }$ .\
5. Remove load, stop engine, loosen the idle adjust screw and reconnect the idle spring.\
6. Using a hand, push the governor arm to the closed throttle position. Make sure the idle spring does not stretch at all.\
7. Restart the unit.\
8. Slowly turn the idle adjust screw to adjust the no-load idle frequency to 63-63.5 Hz (with door open).\
9. The governor is now set.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/923a1cd1f2d3470eb9fb3da553b945a17e818145c5894a635923c928562279ce.jpg)\
\
Figure 2.4 — Engine Governor Adjustment V-twin Engines\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/553e3c5e0d2fa027d32d27a4e26f7b67c6785f63463c641fc6fb6ce05e72ae2f.jpg)\
\
Figure 2.5 — Full Load Speed Adjust Screw V-twin Engines\
\
### 2.7.3 ADDITIONAL CORROSION PROTECTION\
\
Periodically spray all engine linkage parts and brackets with corrosion inhibiting spray such as WD-40 or a comparable product.\
\
### 2.8 VOLTAGE REGULATOR ADJUSTMENT\
\
With the frequency between 62-63 Hertz, slowly turn the slotted potentiometer (Figure 2.6) until line voltage reads 247-252 volts.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/38605ca9cf441e962c84dea0d09e59a867f2fc63a08d0fe0add5e001a4de39b4.jpg)\
\
Figure 2.6 – Voltage Adjustment Potentiometer\
\
NOTE:\
\
The access panel on top of the control panel must be removed to adjust the voltage regulator.\
\
NOTE:\
\
The voltage regulator is housed above the generator's control panel. The regulator maintains a voltage in direct proportion to frequency at a 2-to1 ratio. For example, at 62 Hertz, line-to-neutral voltage will be 124 volts.\
\
### 3.1 BREAK-IN PROCEDURE\
\
Once the unit has been installed and all electrical checks have been made, it is strongly recommended that the following “Break-in Procedure” be completed to ensure correct generator operation in the future.\
\
01. Set the generator’s AUTO/OFF/MANUAL switch to AUTO.\
02. Turn OFF the utility power supply to the transfer switch using the means provided (such as a utility main line circuit breaker).\
03. The unit will start, and the transfer switch will transfer to standby.\
04. Using the transfer switch’s built-in emergency load center, turn on circuits to load the generator to approximately $2 5 %$ rated load and run the unit for one hour.\
05. Run the unit for one hour at $5 0 %$ rated load.\
06. Run the unit for one hour at $7 5 %$ rated load.\
07. Run the unit for one hour at $1 0 0 %$ rated load.\
08. Turn ON the utility power supply to the transfer switch, which will allow the transfer switch to transfer back to utility power. The unit will continue to run for one minute and then shut down.\
09. Allow the unit to cool.\
10. Set the generator’s main circuit breaker to its OFF (or OPEN) position.\
11. Set the generator's AUTO/OFF/MANUAL switch to OFF. Remove the 7.5A and 15A fuses from the generator control panel. Disconnect the battery cables as outlined in “General Hazards”.\
12. Drain the oil and remove the oil filter. Replace the oil filter according to Section 4.4, “Changing the Oil Filter”. Replace the oil with synthetic oil as recommended in Section 4.3, “Changing the Engine Oil”.\
13. Reconnect the battery cables as outlined in “General Hazards” (page 2) and insert the 7.5A and 15A fuses into the generator control panel. The generator is now ready for service.\
\
### 3.2 USING THE AUTO/OFF/MANUAL SWITCH (FIGURE 3.1)\
\
### 3.2.1 “AUTO” POSITION\
\
Selecting this switch position activates fully automatic system operation. It also allows personnel to start and exercise the engine every seven days with the setting of the exercise timer (see Section 3.6). This position also is used for remote starting, when it is set up.\
\
This switch position shuts down the engine. This position also prevents automatic operation.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/22300271871f1629d89df930da7e7aa2d5dfc100acbc16d45e68e70cfb28c1c1.jpg)\
\
Figure 3.1 – Generator Control Panel\
\
### 3.2.3 “MANUAL” POSITION\
\
Set the switch to MANUAL to crank and start the engine. Transfer to standby power will not occur unless there is a utility failure.\
\
### WARNING\
\
 With the switch set to AUTO, the engine may crank and start at any time without warning. Such automatic starting normally occurs when utility power source voltage drops below a preset level or during the normal exercise cycle. To prevent possible injury that might be caused by such sudden starts, always set the switch to OFF and remove the fuses before working on or around the generator or transfer switch. Then, place a “DO NOT OPERATE” tag on the generator panel and on the transfer switch.\
\
### 3.3 AUTOMATIC TRANSFEROPERATION\
\
To select automatic operation, do the following:\
\
1. Make sure the transfer switch main contacts are set to their UTILITY position, i.e., loads connected to the utility power source (Figure 3.2).\
2. Be sure that normal UTILITY power source voltage is available to transfer switch terminal lugs N1 and N2.\
3. Set the generator’s AUTO/OFF/MANUAL switch to AUTO.\
4. Set the generator’s main circuit breaker to its ON (or closed) position.\
\
With the preceding steps complete, the generator will start automatically when utility source voltage drops below a preset level. After the unit starts, loads are transferred to the standby power source. Refer to Section 3.4, “Sequence of Automatic Operation.”\
\
Your generator is equipped with a 12 VDC accessory outlet in the Generator Control Panel. (Figure 3.1) With the generator running or in standby mode, this outlet may be used to temporarily power low power accessories such as a work light, cell phone, radio or any other automotive style accessory. This outlet is capable of delivering a MAXIMUM of 7.5 Amps. If the accessory to be used through this circuit demands too much power, the fuse that protects this circuit will melt open and the circuit will not be functional.\
\
### ! WARNING\
\
 This 12 VDC outlet draws power from the generator's starting battery and extended use of this outlet may drain the battery and the engine may not start. This outlet should NOT be used for battery charging.\
\
### 3.3.2 120 VAC GFCI OUTLET\
\
Your generator is equipped with an external, 15 amp, 120 volt, GFCI convenience outlet that is located in the right rear of the generator enclosure. (Figures 1.1 and 1.2) When the generator is running, in the absence of utility power, this outlet may be used to power items outside your home such as lights or power tools. This outlet may also be used when utility power is present by running the generator in manual mode. This oultlet does not provide power if the generator is not running. This outlet is protected by a 15-amp circuit breaker located in the generator control panel. (Figure 3.1).\
\
### 3.4 SEQUENCE OF AUTOMATICOPERATION\
\
The generator’s control panel houses a control logic circuit board. This board constantly monitors utility power source voltage. Should that voltage drop below a preset level, circuit board action will signal the engine to crank and start. After the engine starts, the circuit board signals the transfer switch to activate and connect load circuits to the standby power supply (load terminal lugs T1/T2 connect to terminal lugs E1/E2).\
\
Upon restoration of utility source voltage above a preset level, generator circuit board action signals the transfer switch to transfer loads back to that power supply. After retransfer, the engine is signalled to shut down.\
\
The actual sequence of operation is controlled by sensors and timers on a control logic circuit board, as follows:\
\
A. Utility Voltage Dropout Sensor • This sensor monitors utility source voltage.\
\
• If utility source voltage drops below about 60 percent of the nominal supply voltage, the sensor energizes a 15-second timer.\
\
• Once the timer has expired, the engine will crank and start.\
\
B. Engine Warm-up Time Delay • This mechanism lets the engine warm up for about 10 seconds before the load is transferred to the standby source.\
\
C. Standby Voltage Sensor • This sensor monitors generator AC output voltage. When the voltage has reached 50 percent of the nominal rated voltage, transfer to standby can occur.\
\
D. Utility Voltage Pickup Sensor • This sensor monitors utility power supply voltage. When that voltage is restored above 70 percent of the nominal source voltage, a retransfer time delay starts timing.\
\
E. Retransfer Time Delay\
\
• This timer runs for about 15 seconds. • At end of a 15-second delay, circuit board action de-energizes transfer relay in the transfer switch. • Retransfer to utility power source then occurs.\
\
F. Engine Cool-down Timer • When the load is transferred back to utility power source, the engine cool-down timer starts timing. • The timer will run for about one minute, and the generator will then shut down.\
\
### 3.5 MANUAL TRANSFER OPERATION\
\
### 3.5.1 TRANSFER TO GENERATOR POWER SOURCE\
\
To start the generator and activate the transfer switch manually, proceed as follows:\
\
1. Set the generator’s AUTO/OFF/MANUAL switch to OFF.\
\
2. Set the generator’s main circuit breaker to its OFF (or open) position.\
\
3. Turn OFF the utility power supply to the transfer switch using the means provided (such as a utility main line circuit breaker).\
\
4. Use the manual transfer handle inside the transfer switch to move the main contacts to their “Standby” position, i.e., loads connected to the standby power source (Figure 3.2).\
\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/968439374f85d7b7b836cda8bb102b75e42cc9264eafd78ec720bd38c406d328.jpg)\
\
Figure 3.2 – Manual Transfer Switch Operation\
\
5. To crank and start the engine, set the AUTO/OFF/ MANUAL switch to MANUAL.\
6. Let the engine stabilize and warm up for a few minutes.\
7. Set the generator’s main circuit breaker to its ON (or closed) position. The standby power source now powers the loads.\
\
### 3.5.2 TRANSFER BACK TO UTILITY POWER SOURCE\
\
When utility power has been restored, transfer back to that source and shut down the generator. This can be accomplished as follows:\
\
1. Set the generator’s main circuit breaker to its OFF (or open) position.\
2. Let the engine run for a minute or two at no-load to stabilize the internal temperatures.\
3. Set the generator’s AUTO/OFF/MANUAL switch to its OFF (or open) position. The engine should shut down.\
4. Check that utility power supply to the transfer switch is turned OFF.\
\
### DANGER\
\
 Do not attempt to activate the transfer switch manually until all power voltage supplies to the switch have been positively turned off. Failure to turn off all power voltage supplies may result in extremely hazardous and possibly fatal electrical shock.\
\
### DANGER\
\
 Do not attempt to activate the transfer switch manually until all power voltage supplies to the switch have been positively turned off. Failure to turn off all power voltage supplies may result in extremely hazardous and possibly fatal electrical shock.\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators\
\
5. Use the manual transfer handle inside the transfer switch to move the main contacts back to their UTILITY position, i.e., loads connected to the utility power source (Figure 3.2).\
6. Turn ON the utility power supply to the transfer switch using the means provided.\
7. Set the system to automatic operation as outlined in “Automatic Transfer Operation,” Section 3.3.\
\
### 3.6 SETTING THE EXERCISE TIMER\
\
This generator is equipped with an exercise timer. Once it is set, the generator will start and exercise once every seven days, on the day of the week and at the time of day the following sequence is completed. During this exercise period, the unit runs for approximately 12 minutes and then shuts down. Transfer of loads to the generator output does not occur during the exercise cycle.\
\
A switch on the control panel (see Figure 3.1) permits selection of the day and time for the system to exercise. At the chosen time, perform the following sequence to select the desired day and time of day the system will exercise.\
\
1. Verify that the AUTO/OFF/MANUAL switch is set to AUTO.\
2. Hold down the “Set Exercise Time” switch until the generator starts (approximately 10 seconds) and then release.\
3. The generator will start and run for approximately 12 minutes and then shut down on its own. The exerciser will then be set to run at that time of day every week.\
\
### NOTE:\
\
The exerciser will only work in the AUTO mode and will not work unless this procedure is performed. The exerciser will need to be reset every time the 12-volt battery is disconnected and then reconnected.\
\
### A CAUTION A\
\
The exerciser WILL NOT work if dip switch 2 on the controller printed circuit board (Remote Not Auto) is ON.\
\
### 3.7 PROTECTION SYSTEMS\
\
### 3.7.1 LOW OIL PRESSURE SWITCH\
\
This switch (Figure 3.3) has normally closed contacts that are held open by engine oil pressure during cranking and operating. Should oil pressure drop below the 8 psi range, switch contacts close, and the engine shuts down. The unit should not be restarted until oil is added. The AUTO/OFF/MANUAL switch must then be turned to OFF and then back to AUTO.\
\
### 3.7.2 HIGH TEMPERATURE SWITCH\
\
This switch’s contacts (Figure 3.3) close if the temperature should exceed approximately $1 4 0 ^ { \\mathrm { o } }$ C $2 8 4 ^ { \\mathrm { o } }$ F), initiating an engine shutdown. The generator will automatically restart and the LED on the generator control panel will reset once the temperature has returned to a safe operating level.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/69a369e62a1711bde9f09dacc6784dc61d3ae9235ed40d9a5ca707afcdcc53dc.jpg)\
\
Figure 3.3 – Low Oil Pressure and High Temperature Switches\
\
### 3.7.3 OVERCRANK\
\
This feature prevents the generator from damaging itself when it continually attempts to start and another problem, such as no fuel supply, prevents it from starting. The unit will crank and rest for a preset time limit. Then, it will stop cranking, and the LED on the generator control panel will light indicating an overcrank failure. The AUTO/OFF/MANUAL switch will need to be set to OFF and then back to AUTO to reset the generator control board.\
\
### NOTE:\
\
If the fault is not repaired, the overcrank feature will continue to activate.\
\
### 3.7.3.1 Approximate Crank Cycle Times\
\
• 15 seconds ON\
\
• 7 seconds OFF\
\
• 7 seconds ON\
\
• 7 seconds OFF\
\
• Repeat for 45 seconds Approximately 90 seconds total\
\
This feature protects the generator from damage by shutting it down if it happens to run faster than the preset limit. This protection also prevents the generator from supplying an output that could potentially damage appliances connected to the generator circuit. Contact the nearest Authorized Dealer if this failure occurs.\
\
### 4.1 FUSES\
\
The generator panel's 15-amp fuse (Figure 4.1) protects the DC control circuit and the battery charge circuit against overload. This fuse is wired in series with the battery output lead to the panel. If this fuse element has melted open, the engine will not be able to crank or start. The generator will also lose all battery charge capabilities. Replace this fuse using only an identical 15-amp replacement fuse. To replace the fuse, push the fuse holder cap down and rotate it counterclockwise.\
\
The generator panel's 7.5-amp fuse protects the 12 VDC accessory socket. If the fuse element has melted open, the 12 VDC socket will not be able to provide power to any accessories. Replace this fuse using only an identical 7.5-amp replacement fuse. To replace the fuse, push the fuse holder cap down and rotate it counterclockwise.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/02d2adf856793f79b818d3c870b2db9729b7b605f1a0cec7dff3edc8c38083a5.jpg)\
\
Figure 4.1 – Generator Control Panel\
\
### 4.2 CHECKING THE ENGINE OIL LEVEL\
\
For oil capacities, see “Specifications,” Section 1.5. For engine oil recommendations, see Section 4.3.1. To check the engine oil level, proceed as follows (Figures 4.2 and 4.3):\
\
1. Start the generator by moving the AUTO/OFF/ MANUAL switch to the MANUAL position. Allow it to run for a short while and then shut it down by moving the switch to the OFF position.\
\
2. Remove the dipstick and wipe it dry with a clean cloth.\
\
3. Install the dipstick; then, remove it again. The oil level should be at the dipstick “Full” mark. If necessary, add oil to the “Full” mark only. DO NOT FILL ABOVE THE “FULL” MARK.\
\
\
### A CAUTION A\
\
Never operate the engine with the oil level below the “Add” mark on the dipstick. Doing this could damage the engine.\
\
4. Install the dipstick.\
5. Reset the AUTO/OFF/MANUAL switch to its original position.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/df5db59007525cdae2c905b5d2d41f4e7efd3c5abd35de1595da1b722c2ff721.jpg)\
\
Figure 4.2 — Oil Dipstick and Fill, 7 kW\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/307781ce62068a3eeb7b992ee5c56ed91807fc0aa907655dc2af76e4ec5726ef.jpg)\
\
Figure 4.3 — Oil Dipstick and Fill, 12 kW and 15 kW\
\
### 4.3 CHANGING THE ENGINE OIL\
\
### 4.3.1 ENGINE OIL RECOMMENDATIONS\
\
Use oil of American Petroleum Institute (API) Service Class SG, SH or SJ. Use all season SAE 5W-30 Synthetic oil. Organic break-in oil is required before using synthetic oil.\
\
### NOTE:\
\
The unit is supplied with “break-in” oil. See the “Break-in Procedure,” Section 3.1, for the first required oil change.\
\
### A CAUTION A\
\
Any attempt to crank or start the engine before it has been properly serviced with the recommended oil may result in an engine failure.\
\
### 4.3.2 OIL CHANGE PROCEDURE\
\
To change the oil, proceed as follows:\
\
1. Run the engine until it is thoroughly warmed up then shut OFF the engine.\
2. Immediately after the engine shuts OFF, pull the oil drain hose (Figure 4.4) free of its retaining clip. Remove the cap from the hose and drain the oil into a suitable container.\
3. After the oil has drained, replace the cap onto the end of the oil drain hose. Retain the hose in the clip.\
4. Refill with the proper recommended oil (see Section 4.3.1). See Section 1.5.2 for oil capacities.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/e2d03b4f2dbe4c03e16fdf650659ae9250fb9f9a7bd778b0da7b84268b7c2455.jpg)\
\
Figure 4.4 – Oil Drain Hose and Filter\
\
### 4.4 CHANGING THE OIL FILTER\
\
Change the engine oil filter as follows:\
\
1. With the oil drained, remove the old oil filter by turning it counterclockwise.\
2. Apply a light coating of clean engine oil to the gasket of the new filter. See Section 1.5.1 for recommended filter.\
3. Screw the new filter on by hand until its gasket lightly contacts the oil filter adapter. Then, tighten the filter an additional 3/4 to one turn (Figure 4.4).\
4. Refill with the proper recommended oil (see Section 4.3.1). See Section 1.5.2 for oil capacities.\
5. Start the engine and check for leaks.\
\
### 4.5 CHANGING THE ENGINE AIR CLEANER\
\
### 4.5.1 7 KW, 12 KW AND 15 KW GENERATORS\
\
See Figures 1.1 and 1.2, for the location of the air cleaner. Use the following procedure (Figure 4.6):\
\
1. Turn the two screws counterclockwise to loosen.\
2. Remove the cover and air filter.\
3. Wipe away dust or debris from inside of the air box and around edges.\
4. Install the new air cleaner into the air box.\
5. Install the cover. Turn the two cover screws clockwise to tighten.\
\
See the “Service Schedule,” Section 4.13, for air cleaner maintenance. See Section 1.5.1 for air filter replacement part number.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/38f6e531785c30d5090707ffa549d87012b4835b8411b53892f1bb0f8371ef04.jpg)\
\
Figure 4.6 — 7 kW, Engine Air Cleaner Location\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/117eb38a81b9cd696672837fbfe2816b448a5e700084c26606a25fc18df163f0.jpg)\
\
Figure 4.7 — 12 kW and 15 kW Engine Air Cleaner\
\
### 4.7 BATTERY MAINTENANCE\
\
The battery should be inspected per the “Service Schedule,” Section 4.13. The following procedure should be followed for inspection:\
\
1. Inspect the battery posts and cables for tightness and corrosion. Tighten and clean as necessary.\
2. Check the battery fluid level of unsealed batteries and, if necessary, fill with Distilled Water Only. Do not use tap water in batteries.\
3. Have the state of charge and condition checked. This should be done with an automotive-type battery hydrometer.\
\
### DANGER\
\
### 4.6 SPARK PLUG(S)\
\
Reset the spark plug(s) gap or replace the spark plug(s) as necessary. See Section 4.13 for maintenance requirements.\
\
1. Clean the area around the base of the spark plug(s) to keep dirt and debris out of the engine. Clean by scraping or washing using a wire brush and commercial solvent. Do not blast the spark plug(s) to clean.\
2. Remove the spark plug(s) and check the condition. Replace the spark plug(s) if worn or if reuse is questionable. See Section 4.13 for recommended inspection.\
3. Check the spark plug gap using a wire feeler gauge. Adjust the gap to $0 . 7 6 \ \\mathrm { m } \\mathrm { \\bar { m } }$ (0.030 inch) for $7 ~ \\mathrm { k W }$ and $0 . 5 0 \\mathrm { \\dot { m } m }$ (0.020 inch) for $1 2 / 1 5 \ \\mathrm { k W }$ by carefully bending the ground electrode (Figure\
\
   4.8).\
\
Do not dispose of the battery in a fire. The battery is capable of exploding.  A battery presents a risk of electrical shock and high short circuit current. The following precautions are to be observed when working on batteries: • Remove the 7.5A and 15A fuses from the generator control panel. • Remove watches, rings or other metal objects; • Use tools with insulated handles; • Wear rubber gloves and boots; • Do not lay tools or metal parts on top of the battery; and • Disconnect charging source prior to connecting or disconnecting battery terminals.\
\
### ! WARNING\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/1c5ef9682f0082c315240ce66ab3954dab8ec0c5e8c66737dd412d42e12399c3.jpg)\
\
Figure 4.8 – Setting the Spark Plug Gap\
\
 Do not open or mutilate the battery. Released electrolyte has been known to be harmful to the skin and eyes, and to be toxic.\
\
 The electrolyte is a dilute sulfuric acid that is harmful to the skin and eyes. It is electrically conductive and corrosive. The following procedures are to be observed:\
\
• Wear full eye protection and protective clothing;\
\
• Where electrolyte contacts the skin, wash it off\
\
immediately with water;\
\
• Where electrolyte contacts the eyes, flush thoroughly and immediately with water and seek medical attention; and\
\
• Spilled electrolyte is to be washed down with an acid neutralizing agent. A common practice is to use a solution of 1 pound (500 grams) bicarbonate of soda to 1 gallon (4 liters) of water. The bicarbonate of soda solution is to be added until the evidence of reaction (foaming) has ceased. The resulting liquid is to be flushed with water and the area dried.\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators\
\
Lead-acid batteries present a risk of fire because they generate hydrogen gas. The following procedures are to be followed:\
\
• DO NOT SMOKE when near the battery;\
\
• DO NOT cause flame or spark in battery area; and\
\
• Discharge static electricity from body before touching the battery by first touching a grounded metal surface.\
\
 Be sure the AUTO/OFF/MANUAL switch is set to the OFF position before connecting the battery cables. If the switch is set to AUTO or MANUAL, the generator can crank and start as soon as the battery cables are connected. Be sure the utility power supply is turned off and the 7.5A and 15A fuses are removed from the generator control panel, or sparking may occur at the battery posts as the cables are attached and cause an explosion.\
\
### 4.8 ADJUSTING GH-410/GT-990/760 VALVE CLEARANCE\
\
After the first 6 months of operation, adjust the valve clearance in the engine.\
\
Important: If feeling uncomfortable about doing this procedure or the proper tools are not available, please contact the Authorized Dealer for service assistance. This is a very important step to insure longest life for the engine.\
\
### To adjust valve clearance:\
\
• Make sure the engine is at room temperature. • Make sure that the spark plug wire is removed from the spark plug and out of the way. • Remove the four screws attaching the valve cover with a $# 2$ or $# 3$ phillips screwdriver. • Make sure the piston is at Top Dead Center (TDC) of its compression stroke (both valves closed). To get the piston at TDC, remove the intake screen at the front of the engine to gain access to the flywheel nut. Use a large socket and socket wrench to rotate the nut and hence the engine. While watching the piston through the spark plug hole. The piston should move up and down. The piston is at TDC when it is up as high as it can go. Loosen the rocker jam nut. Use an $1 0 \\mathrm { m m }$ allen wrench to turn the pivot ball stud while checking clearance between the rocker arm and the valve stem with a feeler gauge. Correct clearance is 0.002-0.004 inch $( 0 . 0 5 { - } 0 . 1 \ \\mathrm { m m } )$ ).\
\
### NOTE:\
\
Hold the rocker arm jam nut in place as the pivot ball stud is turned.\
\
When valve clearance is correct, hold the pivot ball stud in place with the allen wrench and tighten the rocker arm jam nut. Tighten the jam nut to 174 in/lbs. torque. After tightening the jam nut, recheck valve clearance to make sure it did not change.\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/4718cfac0db5768f5dc1191545001f859e70b8831d748e8015470a1e44696d40.jpg)\
\
Figure 4.10 - Valve Clearance Adjustment\
\
• Install new valve cover gasket.\
\
• Re-attach the valve cover.\
\
### NOTE:\
\
Start all four screws before tightening or it will not be possible to get all the screws in place. Make sure the valve cover gasket is in place.\
\
• Re-attach the spark plug wire to the spark plug. • On GT-990, Repeat the process for the other cylinder.\
\
### 4.9 COOLING SYSTEM\
\
Air inlet and outlet openings in the generator compartment must be open and unobstructed for continued proper operation. This includes such obstructions as high grass, weeds, brush, leaves and snow.\
\
Without sufficient cooling and ventilating air flow, the engine/generator quickly overheats, which causes it to quickly shut down. (See Figure 4.9 for vent locations.)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/4bd1c3314fae99ce40e414500e97eaa3f7469f1752387f2871047ec3407cabf3.jpg)\
\
Figure 4.9 – Cooling Vent Locations\
\
### WARNING\
\
The exhaust from this product gets extremely hot and remains hot after shutdown. High grass, weeds, brush, leaves, etc. must remain clear of the exhaust. Such materials may ignite and burn from the heat of the exhaust system.\
\
 The maximum ambient temperature for the generator is ${ \\pmb { 4 0 } } ^ { \\circ } \\textbf { C }$ ( $1 0 4 ^ { \\circ }$ F).\
\
### 4.10 ATTENTION AFTER SUBMERSION\
\
If the generator has been submerged in water, it must not be started and operated. Following any submersion in water, have an Authorized Dealer thoroughly clean and dry the generator.\
\
### 4.11 CORROSION PROTECTION\
\
Periodically wash and wax the enclosure using automotive type products. Frequent washing is recommended in salt water/coastal areas. Spray engine linkages with a light oil such as WD-40.\
\
### 4.12 OUT OF SERVICE PROCEDURE\
\
### 4.12.1 REMOVAL FROM SERVICE\
\
If the generator cannot be exercised every seven days, and will be out of service longer than 90 days, prepare the generator for storage as follows:\
\
01. Start the engine and let it warm up.\
02. Close the fuel shutoff valve in the fuel supply line and allow the unit to shut down.\
03. Once the unit has shut down, it will signal a low oil fault.\
04. Set the generator’s main circuit breaker to its OFF (or open) position.\
05. Set the AUTO/OFF/MANUAL switch to OFF and turn off the utility power to the transfer switch. Remove the 7.5A and 15A fuses from the generator control panel. Disconnect the battery cables as outlined in “General Hazards” (page 2).\
06. While the engine is still warm from running, drain the oil completely. Refill the crankcase with oil. See ”Engine Oil Recommendations,” Section\
\
    4.3.1.\
07. Attach a tag to the engine indicating the viscosity and classification of the oil in the crankcase.\
08. Remove the spark plug(s) and spray fogging agent into the spark plug(s) threaded openings. Reinstall and tighten the spark plug(s).\
09. Remove the battery and store it in a cool, dry room on a wooden board. Never store the battery on any concrete or earthen floor.\
10. Clean and wipe the entire generator.\
\
### 4.12.2 RETURN TO SERVICE\
\
To return the unit to service after storage, proceed as follows:\
\
01. Verify that utility power is turned off and that the AUTO/OFF/MANUAL switch is set to OFF.\
02. Check the tag on the engine for oil viscosity and classification. Verify that the correct recommended oil is used in the engine (see Section 4.3.1). If necessary, drain and refill with the proper oil.\
03. Check the state of the battery. Fill all cells of unsealed batteries to the proper level with distilled water. DO NOT USE TAP WATER IN THE BATTERY. Recharge the battery to 100 percent state of charge, or, if defective, replace the battery. See “Specifications,” Section 1.5, for type and size.\
04. Clean and wipe the entire generator.\
05. Remove the 7.5A and 15A fuses from the generator control panel. Reconnect the battery. Observe battery polarity. Damage may occur if the battery is connected incorrectly.\
06. Open the fuel shutoff valve.\
07. Insert the 7.5A and 15A fuses into the generator control panel. Start the unit by moving the AUTO/ OFF/MANUAL switch to MANUAL. Allow the unit to warm up thoroughly.\
08. Stop the unit by setting the AUTO/OFF/MANUAL switch to OFF.\
09. Turn on the utility power to the transfer switch.\
10. Set the AUTO/OFF/MANUAL switch to AUTO.\
11. The generator is now ready for service.\
\
### NOTE:\
\
If the battery was dead or disconnected, the exercise timer must be reset.\
\
### 4.13 SERVICE SCHEDULE\
\
|     |     |     |     |     |\
| --- | --- | --- | --- | --- |\
| ATTENTION: It is recommended that all service workbe performed by the nearest Authorized Dealer. |\
| SYSTEM/COMPONENT | PROCEDURE | FREQUENCY |\
| X = ActionR = Replace as Necessary\* = Notify Dealerif Repair is Needed. | Inspect | Change | Clean | W = WeeklyM = MonthlyY = Yearly |\
| FUEL |\
| Fuel lines and connections\* | X |  |  | M |\
| LUBRICATION |\
| Oil level | X |  |  | M |\
| Oil |  | X |  | AFTER BREAK-IN,AND Y |\
| Oil filter |  | X |  | AFTER BREAK-IN,AND Y |\
| COOLING |\
| Enclosure louvers | X |  | X | W |\
| BATTERY |\
| Remove corrosion,ensure dryness | X |  | X | M |\
| Clean and tightenbattery terminals | X |  | X | M |\
| Check charge state | X | R |  | EVERY 6 M |\
| Electrolyte level(unsealed batteries only)\* | X | R |  | EVERY 6 M |\
| ENGINE AND MOUNTING |\
| Air cleaner | X | R |  | Y |\
| Spark plug(s) | X | R |  | Y |\
| GENERAL CONDITION |\
| Vibration, Noise, Leakage,Temperature\* | X |  |  | M |\
| COMPLETE TUNE-UP\* | TO BE COMPLETED BY ANAUTHORIZED DEALER | Y |\
\
### 5.1 TROUBLESHOOTING GUIDE\
\
\*Contact the nearest Authorized Dealer for assistance.\
\
|     |     |     |     |     |\
| --- | --- | --- | --- | --- |\
| Problem | Cause | Correction |\
| The engine will not crank. |  | .Fuse blown. | 1. | Replace 15A fuse in generator control panel. |\
|  | 2. | Loose, corroded or defective battery cables. | 2. | Tighten, clean or replace as necessary. |\
|  | 3. | Defective starter contactor. (7 kW) 3. |  | \* |\
|  | 4. | Defective starter motor. | 4. | \* |\
|  | 5. | Dead Battery. | 5. | Charge or replace battery. |\
| The engine cranks but | 1. | Out of fuel. | 1. | Replenish fuel. |\
| will not start. | 2. | Defective fuel solenoid (FS). | 2. | \* |\
|  | 3. | Open #14 wire from engine control board. | 3\. \* |  |\
|  | 4. | Defective spark plug(s). |  | 4Clean, re-gap or replace plug(s). |\
|  | 5. | Valve lash out of adjustment. | 5.I | Reset valve lash. |\
| The engine starts hard and runs rough. |  | 1.Air cleaner plugged | 1. | Check, replace air cleaner. |\
|  | 2. | or damaged. Defective spark plug(s). | 2. | Clean, re-gap or replace plug(s). |\
|  | 3. | Fuel Regulator not set. | 3. | Set Fuel Regulator. |\
|  |  | 4Fuel Pressure incorrect. | 4. | Confirm fuel pressure to regulator is 10-12" water column (0.36-0.43 psi) for LP, and 5-7" water colum (0.18-0.25 psi) for natural gas. |\
| The Auto/Off/Manual switch |  | 1Defective switch. |  | 1\. \* |\
| is set to OFF, but the engine continues to run. |  | 2\. Auto/Off/Manual switch wired incorrectly. |  | 2\. \* |\
|  | 3. | Defective control board. |  | 3\. \* |\
| There is no AC output from the generator. |  | 1.Main line circuit breaker open. |  | Reset circuit breaker to ON (or closed). |\
|  |  | 2\. Generator internal failure. | 2. | \* |\
| There is no transfer to | 1. | Defective transfer switch coil. |  |  |\
| standby after utility | 2. | Defective transfer relay. |  | 2\. \* |\
| source failure. | 3. | Transfer relay circuit open. |  | 3\. \* |\
|  | 4. | Defective control logic board. |  | 4\. \* |\
| Unit consumes large amounts of oil. | 1. | Break-in procedure not followed (see Section 3.1). | 1. | \* |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/9610c99a3023d01cd0ff3b193d73d6430592ac7fad1bee7308a8c335d76df31a.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/1b2c26b44cab4df158323bacd894c1f34d3e6174c81939854daa6a96ebd57fa2.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/3577f0803d1e51c9b9666c32ef5bd2686ba63fa98eb95e2506562ccba945b726.jpg)\
\
### Section 7 — Electrical Data\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – V-Twin – Drawing No. 0E9016\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/71ecc2bed2b902080f276ec5480f1fc992725e63e85ea6615a30700bdbbfafd8.jpg)\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – V-Twin – Drawing No. 0E9016\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/be517fae90e6bd4e2e6ff4bfd45c5fe3052f5e8687898602a43f9e4631159e26.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/1a4d7c1ff000a2e98f6e7320df268608ebceebd5007be45e12abd043fa435259.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/4ebf56f4c4f98f4046dad63e679bd31dfc62a13f08d629f6a4e06e7e6dc3afbc.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/9e45d0fd3246adee8d4867da40a9427aef52280fa461bfa01d031a10d1ac71c3.jpg)\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – Single Cylinder – Drawing No. 0E9014\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/3f2a280b3b55ab23ae36b3b2e74a118ce2e6a51f900bf551d075ff36e9756870.jpg)\
\
### Section 7 — Electrical Data\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Electrical Schematic – Single Cylinder – Drawing No. 0E9015\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/9a0f7a1cb0549089e071fee4db4543b662b6b639891032ef6dcf69bff64d07f6.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/a644d78191c3573f864d19694a72f7478bed871b3b20bd1fe70dfbaec8bed714.jpg)\
\
### Section 7 — Electrical Data\
\
Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – 8 Circuit Load Center – Drawing No. 0E7687A\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/00885bd7d90c3aac9345ae3d513586e547dee403c16732c803e5a8fe2587703b.jpg)\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – 8 Circuit Load Center – Drawing No. 0E7687A\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/c359bc33800bfe7139d0caa94c6f0d525a1fade6f0201b4f8c883beefa1ef232.jpg)\
\
### Section 7 — Electrical Data\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – 12 Circuit Load Center – Drawing No. 0E7687$\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/309e702281b31cc6cec5d99af852ae3866001d61cd5dda8c46837f61ffc7addf.jpg)\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Wiring Diagram – 12 Circuit Load Center – Drawing No. 0E7687$\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/9e58620976af361f50ec1617e270f884ba709960a77dbcd1981e78f17768309f.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/c45cf0011577ab6b51ea17ae9ae8ce3a373c4157b2e52f84af0d9d95db36e3f6.jpg)\
\
Air-cooled 7 kW, 12 kW and 15 kW Generators Electrical Schematic – 12 Circuit Load Center – Drawing No. 0E7815$\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/6e7e99fea52fb5997488d443cc8ccf809af59d78cef951d2f3c2ef991d4d5ee3.jpg)\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/903e7dd20dceec014f79b9ddb810bd4f308655e769c0c818b06167924d25a8cd.jpg)\
\
|     |     |     |     |     |     |     |\
| --- | --- | --- | --- | --- | --- | --- |\
|  |  |  | ASSEMBLY, ENCLOSURE BASE |  | 047411 |  |\
| 1 | 0C6140 |  |  | 47 | 6 | SCREW HHC M6-1.0 X 16 G8.8 |\
|  | 0D1901 |  | ASSEMBLY, ENCLOSURE BASE (7KW) | 48 | 047411 4 | SCREW HHC M6-1.0 X 16 G8.8 (7KW) |\
| 2 | 0C6735 | 2 | SUPPORT, ROOF FOLDING |  | 043116 5 | SCREW HHC M6-1.0 X 12 G8.8 |\
| 3 | 0F0063 |  | ENCLOSURE, FRONT |  | 043116 6 | SCREW HHC M6-1.0 X 12 G8.8 (7KW) |\
| 4 | 0C7062 |  | ENCLOSURE, EXHAUST SIDE | 49 | 0D3700 26 | NUT, LOCKING FLANGE M6-1.0 |\
|  | 0C7062A |  | ENCLOSURE, EXHAUST SIDE (7KW) |  | 0D3700 24 | NUT, LOCKING FLANGE M6-1.0 (7KW) |\
| 5 | 0E8811 |  | ENCLOSURE, SIDE & BACK | 50 | 0D4662 11 | SCREW HHTT M8-1.2 X 20 BP |\
| 6 | 0E8811A |  | ENCLOSURE, SIDE & BACK (7KW) | 51 | 090388 36 | SCREW TAPTITE M6-1.0 X 12 BP |\
| 7 | 0E9873 |  | ENCLOSURE, ROOF |  | 24 | SCREW TAPTITE M6-1.0 X 12 BP (7KW) |\
|  | 0C7065 |  | PANEL, ALTERNATOR DIVIDER | 52 | 092120 2 | NUT LOCK TRIC M6 X 1.0 Y/ZNC |\
| 8 | 0C7065A |  | PANEL, ALTERNATOR DIVIDER (7KW) | 54 | 0D3167 1 | GASKET, BATTERY SUPPORT BRACKET |\
|  | 0C8101A |  | PANEL, MUFFLER BOX SIDE | 55 | 0A3328 1 | PLUG, PLASTIC 0.593 |\
| 9 | 0C8861 |  | PANEL, MUFFLER BOX SIDE (7KW) | 56 | 055414 | LUG SLDLSS #2-#8X17/64 CU |\
|  | 0C8101B |  | COVER, MUFFLER BOX | 57 | 092079 | SCREW TAPTITE M6-1.0X25 BP |\
| 10 | 0C8862 |  | COVER, MUFFLER BOX (7KW) | 58 | 0A1658 2 | L/WASH SPECIAL 1½4 |\
| 11 | 0C8283 |  | GASKET, DOOR SEAL | 59 | 0C2937 | BRACKET, BATTERY HOLD DOWN (7KW) |\
| 12 | 0C8284A |  | FOAM, BACK ENCLOSURE | 60 | 086729 | CONTACTOR, STARTER (7KW) |\
| 13 | 0C8284B |  | FOAM, ROOF ENCLOSURE | 61 | 0388040AJ0 | CABLE, #6 RED BATTERY 38.5" |\
| 14 | 0C8284C |  | FOAM, FRONT ENCLOSURE | 62 | 022127 2 | NUT HEX 1/4-20 STEEL (7KW) |\
| 15 | 0C8285 |  | BRACKET, BATTERY SUPPORT | 63 | 022129 6 | WASHER LOCK 5/16 |\
| 16 | 0C8899A |  | PAD, 24"X48" WITH MOUNTING HOLES |  | 022129 | WASHER LOCK 5/16 (7KW) |\
|  | 0D1128 |  | PANEL, ENGINE DIVIDER | 64 | 074908 8 | SCREW TAPTITE M5-0.8 X 10 BP |\
| 17 | 0D1128A |  | PANEL, ENGINE DIVIDER (7KW) | 65 | 0D2346 | HARNESS, ENGINE |\
|  | 0E4244 |  | BAFFLE, INTAKE |  | 0D2345 | HARNESS, ENGINE (7KW) |\
| 18 | 0D1605A |  | BAFFLE, INTAKE (7KW) | 66 | 023484F | BUSHING, SNAP SB-1000-12 |\
|  | 0D1606 |  | HOUSING, FAN | 67 | 022142 | SCREW HHC 5/16-18 X 3/4 G5 (7KW) |\
| 19 | 0D5264 |  | BAFFLE, EXHAUST (7KW) | 68 | 0A7836 2 | RIVET,1/8" X 0.126" - 0.375" LSH POP |\
| 20 | 0D1839 | 2 | BRACKET, TOP SUPPORT | 69 | 0A8475 2 | L/WASH SPECIAL #10 |\
| 21 | 0D1840 | 2 | BRACKET, BOTTOM SUPPORT | 70 | 0912970069 1 | ASSEMBLY, ROOF / DOOR GROUND WIRE |\
| 22 | 0D2425 |  | DUCT, BASE AIR | 71 | 0912970070 2 | ASSEMBLY, ROOF / DOOR GROUND WIRE |\
|  | 0D2588 |  | GASKET, FRONT DIVIDER | 72 | 055450 2 | PLUG PLASTIC 1.375 |\
| 23 | 0D2588A |  | GASKET, FRONT DIVIDER (7KW) | 73 | 0E5968 11 | GASKET, EXTRUDED TRIM |\
| 24 | 0D2676 |  | COVER, FRONT EXHAUST ENCLOSURE | 74 | 0D3701 1 | PLATE, "HOT" |\
| 25 | 0D2677 |  | COVER, BACK EXHAUST ENCLOSURE | 75 | 0D3472 1 | GROMMET 2.75 X 1/16 |\
|  | 0D2979B | 2 | CLOTH, HARDWARE 266.7mm x 146mm | 76 | 0C8742 | EXTERNAL CONNECTION BOX |\
|  | 0D2979B | 3 | CLOTH, HARDWARE 266.7mm x 146mm | 77 | 0C8911 1 | POWER BLOCK |\
| 26 | 0D2979C |  | (7KW) | 78 | 0D8442 1 | HARNESS GENERATOR TO EXTERNAL |\
| 27 | 0D2979D |  | CLOTH, HARDWARE 543mm x 146mm CLOTH, HARDWARE 266.7mm x 387.4mm |  |  | CONNECTION BOX |\
|  | 0D2979E |  | CLOTH, HARDWARE (7KW) |  | 0D8652 | HARNESS GENERATOR TO EXTERNAL |\
| 28 | 0E4245 |  | FOAM, FRONT INTAKE BAFFLE | 79 |  | CONNECTION BOX (7KW) |\
|  | 0D3058A |  | FOAM, FRONT INTAKE BAFFLE (7KW) | 80 | 036937 2 | SCREW PPHM #10-32 X 1 |\
| 29 | 0E4245A |  |  | 81 | 022152 5 | WASHER LOCK #10 |\
| 30 | 0E4245B |  | FOAM, TOP INTAKE BAFFLE | 82 | 051713 2 | WASHER FLAT M5 |\
|  | 0D3058C |  | FOAM, BACK INTAKE BAFFLE FOAM, BACK INTAKE BAFFLE (7KW) | 83 | 022158 5 | NUT HEX #10-32 STEEL |\
| 31 | 0D3057D |  | FOAM, BACK ENCL. STRIP | 84 | 0D3031 026850 | FUEL LINE, 3/4"OUTDOOR (NOT SHOWN) |\
| 32 | 0D3059A |  | FOAM, EXHAUST SIDE ENCLOSURE END | 85 | 049813 | WASHER SHAKPROOF EXT 1/4 STEEL NUT HEX M6-1.0 G8 YELLOW CHROME |\
| 33 | 0D3059B | 1 | FOAM, EXHAUST SIDE ENCLSURE FRONT | 86 | 0F0164A | HINGE TYPE A WITH STUDS, SOCKET |\
| 34 | 0D3059C | 1 | FOAM, EXHAUST FAN HOUSING | 87 | 0F0165A | HINGE TYPE B WITH STUDS, SOCKET |\
| 35 | 0D7176 | 24 | WASHER, SELF LOCKING | 89 | 0E2874 1 | SCREW HHTR 1/4-20 X 3/4 |\
|  |  | 22 | WASHER, SELF LOCKING (7KW) | 90 | 043107 4 | SCREW HHC M8-1.25 X 25 |\
| 36 | 0D3059D | 1 | FOAM, FRONT EXHAUST ENCL COVER | 91 | 022145 10 | WASHER FLAT 5/16 |\
| 37 | 0D3059E |  | FOAM, BACK EXHAUST ENCL COVER | 92 | 045771 4 | NUT HEX M8-1.25 |\
| 38 | 0C7781A | 2 | DOOR, PAWL | 93 | 0C3906 2 | SELF-ALIGN SCREW M6 HH |\
| 39 | 0D3037 |  | LATCH, QUARTER TURN LOCKING | 94 | 0E4321 | PANEL, EXHAUST ALIGNMENT |\
| 40 | 0F0164 |  | HINGE TYPE A WITH STUDS, PIN | 95 0E1330A |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/07e06c12fab1152323f0f9bd608bd25068d9b5d028ea2dbba2a3baf01c07f4ae.jpg)\
\
|     |     |     |     |     |     |     |     |\
| --- | --- | --- | --- | --- | --- | --- | --- |\
|  |  |  | IEM PART NO. QTY. DESCRIPTION |  | IEM PART NO. QTY. | DESCRIPTION |  |\
| 1 |  |  |  |  |  |  |  |\
|  | 0E7886A | 1 | CIRCUIT BREAKER 30A X 2P 240V (7KW) | 27 | 074908 | 4 | SCREW TAPTITE, M5-0.8 x 10 BP |\
|  | 0E7886E | 1 | CIRCUIT BREAKER 50A X 2P 240V | 28 | 049226 | 6 | WASHER LOCK M5 |\
|  |  |  | (12KW) | 29 | 082025 | 6 | NUT HEX LOCK M5-0.8 NYLON INSERT |\
|  | 0E7886J | 1 | CIRCUIT BREAKER 65A X 2P 240V | 30 | 0C3910 | 1 | TRANSFORMER |\
|  |  |  | (13/15KW) | 31 | 022507 | 2 | SCREW HHC 1/4"-20 x 1/2" |\
| 2 | 0A1801 | 1 | ASSEMBLY, BATTERY CHARGER ENGINE | 32 | 0A9611 | 1 | FUSE 7.55A X AGC5 |\
| 3 | 083049 | 1 | ASSEMBLY, POTTED REGULATOR | 33 | 046689 |  | BLOCK TERMINAL STRIP 20A 4 X 6 X |\
| 4 | 0C2174 | 1 | RELAY, 12V 25A SPST |  |  |  | 1100V |\
| 5 | 075210A | 1 | BLOCK 1 POSITION | 34 | 063617 |  | RELAY PANEL 12VDC DPDT 10A 240VAC |\
| 6 | 0D3062 | 4 | HEX STAND-OFF #6-32 x 3/8" | 35 | 075475 | 2 | SCREW PPHM M4-0.7 x 10mm |\
| 7 | 0D8615 | 1 | ASSEMBLY, HOME STANDBY | 36 | 043180 | 2 | WASHER FLAT M4 |\
|  |  |  | CONTROLLER | 37 | 0E8812 |  | COVER, CONTROL PANEL COMPONENT |\
|  | 0D8615A |  | ASSEMBLY, HOME STANDBY CONTROLLER (7KW) |  | 0E8895 |  | COVER, CONTROL PANEL COMPONENT |\
| 8 | 032300 | 2 | HOLDER, FUSE | 38 | 092036 |  | (7KW) SCREW PPHMS/LW #6-32 x 1/4" |\
| 9 | 022676 | 1 | FUSE, 15AMP X AGC15 | 39 | 045770 | 8 | SCREW HHC M5-0.8 x10mm |\
| 10 | 0E4494 |  | SWITCH, ROCKER DPDT ON-OFF-ON | 40 | 0E7866 | 2 | COVER, CONTROL PANEL |\
| 11 | 0E7890 | 1 | CIRCUIT BREAKER MOUNTING |  | 0E7867 |  |  |\
|  |  |  | BRACKET | 41 |  |  | COVER, CONTROL PANEL (7KW) |\
| 12 | 023484E | 1 | SNAP BUSHING | 42 | 0D3700 | 8 | NUT FLANGE M6-1.0 NYLOK |\
| 13 | 075476 | 4 | SCREW PPHM M4-0.7 x 16mm | 43 | 0912970069 |  | ASSEMBLY, ROOF/DOOR GROUND WIRE |\
| 15 | 0E6480 |  | NUT HEX LOCK M4-0.7 NYLON INSERT |  | 0E2874 |  | SCREW HHTR 1/4"-20 X 3/4" |\
| 17 | 0C1085 | 6 |  | 44 | 0A1658 | 2 | WASHER LOCK SPECIAL 1/4" |\
|  | 0C1085 | 6 | SCREW PPHM M3-0.5 x 8mm | 45 | 022473 | 3 | WASHER FLAT 1/4"-M6 |\
| 19 | 054502 | 4 | SCREW PPHM M3-0.5 x 8mm (7KW) | 46 | 038750 |  | SCREW HHC M6-1.0 x 30mm |\
|  | 053623 | 1 | CIRCUIT BREAKER 3 X 1 ETA 46-500-P | 47 | 022097 | 3 | WASHER LOCK M6-1/4" |\
|  |  | 1 | CIRCUIT BREAKER 2.5 X 1 ETA 46-500-P | 48 | 049813 |  | NUT HEX M6-1.0 |\
| 20 | 0E7870 |  | (7KW) | 49 | 031879 | 6 | WASHER FLAT #4 |\
|  | 0E7871 |  | CONTROL, PANEL BOTTOM |  | 031879 | 4 | WASHER FLAT #4 (7KW) |\
| 21 | 075235 | 1 | CONTROL, PANEL BOTTOM (7KW) | 50 | 023897 | 2 | WASHER FLAT #10 |\
| 22 | 0D5240 | 4 | SCREW HHC M5-0.8 x 30mm | 51 | 0E9056 |  | SOCKET, 12VDC ACCESSORY |\
| 23 | 0D9784 | 1 | SWITCH, SPST (ON)-ON N/O | 52 | 0E5840 | 1 | CIRCUIT BREAKER 15A PUSH / PULL |\
|  | 0D9784 | 6 | NUT HEX LOCK M3-0.5 NYLON INSERT |  |  |  | MAIN RESET |\
|  |  | 4 | NUT HEX LOCK M3-0.5 NYLON INSERT | 53 | 036903 | 6 | SCREW PPHM #6-32 X 5/8" |\
| 24 | 0D8502 |  | (7KW) | 54 | 0E7833 | 1 | PLATE, WEATHERPROOF GFCI |\
| 26 | 0E8956 | 1 | NEUTRAL CONNECTOR | 55 | 0E4261 | 1 | OUTLET, 15A GFCI DUPLEX |\
|  |  | 1 | HARNESS, CONTROL PANEL (NOT | 56 | 022985 | 4 | WASHER FLAT #6 |\
|  | 0E8957 |  | SHOWN) | 57 | 082625 | 4 | NUT LOCK HEX #6-32 NYL INSERT |\
|  |  |  | HARNESS, CONTROL PANEL WIRE (NOT | 58 | 0E9171 |  | GASKET, WEATHERPROOF GFCI |\
|  |  |  | SHOWN) (7KW) | 59 | 0F4793 | 2 | SCREW PPHM M3-0.5 x 10mm |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/da19ad14ba69340ce64d49aca0bdc0a298169b2e54461c4064f3715d3e99f0b5.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| TEM | PART NO. | QTY. | DESCRIPTION |\
|  |  |  |  |\
| 1 | 0D4801 | 1 | BOX GTS LOAD CENTER |\
| 2 | 0D4800 | 1 | COVER, 8 POSITION GTS LOAD CENTER |\
| 3 | 0C2237 | 1 | TRANSFER SWITCH HOME STANDBY 100A 2P 250V |\
| 3A | 077220 | 1 | COIL UTILITY |\
| 3B | 077220A | 1 | COIL STANDBY |\
| 3C | 082574 | 1 | INSULATOR-SIDEWALL (NOT SHOWN) |\
| 3D | 084464 | 1 | LIMIT SWITCH OPERATION (NOT SHOWN) |\
| 4 5 | 074908 024912 | 8 | SCREW TAPTITE M5-0.8 X 10 BP |\
| 6 | 0A1658 | 1 | SCREW TAPTITE 1/4-20 X 5/8 BP |\
| 7 | 063617 | 1 | LOCK WASHER, SPECIAL-1/4" |\
| 8 | 0E7889A | 1 | RELAY PANEL 12VDC DPDT 10A@240VAC |\
| 9 | 0A1495 | 1 | 8 CIRCUIT LOAD CENTER 125A/240V |\
| 10 | 0A1661 | 4 2 | SCREW HHTT M4-0.7 X 10 RIVET POP 0.156" X 0.675" |\
| 11 | 022473 | 1 | WASHER FLAT 1/4-M6 |\
| 12 | 0D3094 | 1 | HARNESS,GTS TO MAIN PANEL |\
| 13 | 0D4684A | 1 | PLATE HARNESS ADAPTER |\
| 14 | 0E7900 |  |  |\
| 15 | 0F4790 | 1 | SUBPLATE, LOAD CENTER |\
| 16 | 022152 | 10.5" | U-CHANNEL WASHER LOCK #10 |\
| 17 | 064526 | 6 |  |\
| 18 | 0E6155 | 2 | SCREW HWHS #6-25 X 3/8 |\
| 19 | 063378 | 1 | ARM EXTENDER PIN |\
| 20 | 0A2110 | 4 | HOLDER CABLE TIE |\
| 21 | 074138 | 4 | SCREW SWAGE 1/4-20 X 1/2 ZINC |\
| 22 |  | 2 | LUG QUICK DISCONNECT NI-S 10X45 DEG BRASS / TIN |\
|  | 036933 | 6 | SCREW PPHM #10-32 X 3/8" |\
| 23 | 077033 | 6 | LUG SLDLSS 1/0-#14X9/16 AL/CU |\
| 24 | 048850 | 1 | BLOCK TERMINAL 20A 5 X 6 X 1100V |\
| 25 | 028739 | 4 | TIE WRAP UL 3.9" X .10" NAT'L |\
| 26 | 0D4802 | 1 | HARNESS, GTS TO EXTERNAL CONNECTION BOX |\
| 27 | 0D3191 | 1 | COVER, RELAY & TERM BLOCK |\
| 28 | 0D3088 | 1 | WIRE HARNESS,GTS LOAD CENTER (NOT SHOWN FOR CLARITY) |\
| 29 | 073591 | 2 | FUSE HOLDER |\
| 30 | 073590A | 2 | FUSE 5A X BUSS |\
| 31 | 040213B | 4 | PCB SUPPORT SNAP-IN 1-3/8" |\
| 32 | 0E7888C | 1 | CIRCUIT BREAKER 20A X 1P |\
| 33 | 0A7215 | 4 | SCREW SW 1/4-20X5/8 WITH WASHER |\
| 34 | 0E7888B | 5 | CIRCUIT BREAKER 15A X 1P |\
| 35 | 0E7888A | 1 | CIRCUIT BREAKER 30A X 2P |\
| 36 | 0D3320 | 1 | COVER - HARNESS ENTRY |\
| 37 | 0E6193 | 1 | BRACKET, ARM EXTENDER |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/95c495dfdb9ce7307788fc8113b930113c29b6eb8267ee0bce975ed4868525a6.jpg)\
\
Air-cooled 7 kW, 12 kW and 15 kW Generators 12 kW and 15 kW, 12 Circuit Load Center Assembly – Drawing No. 0E7973-F\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
|  | PART NO. | QTY. | DESCRIPTION |\
| TEM |  |  |  |\
| 1 | 0D3086 | 1 | BOX GTS LOAD CENTER |\
| 2 | 0D3092 | 1 | COVER, 12 CIRCUIT GTS LOAD CENTER |\
|  | 0F5211 | 1 | COVER, 10 CIRCUIT GTS LOAD CENTER |\
| 3 | 0C2237 | 1 | TRANSFER SWITCH HOME STANDBY 100A 2P 250V |\
| 3A |  | 1 | COIL UTILITY |\
| 3B | 077220 077220A | 1 | COIL STANDBY |\
| 3C | 082574 | 1 | INSULATOR-SIDEWALL (NOT SHOWN) |\
| 3D | 084464 | 1 | LIMIT SWITCH OPERATION (NOT SHOWN) |\
| 4 | 074908 | 6 | SCREW HHTT M5-0.8 X 10 |\
| 5 | 024912 | 1 | SCREW HHTT 1/4-20 X 5/8 |\
| 6 | 0A1658 | 1 | LOCK WASHER, SPECIAL-1/4" |\
| 7 | 063617 | 1 | RELAY PANEL 12VDC DPDT 10A@240VAC |\
| 8 | 0E7889 | 1 | 12 CIRCUIT LOAD CENTER 125A/240V |\
| 9 | 0A1495 | 4 | SCREW HHTT M4-0.7 X 10 |\
| 10 | 0A1661 | 2 | RIVET POP .156" X .675" |\
| 11 | 022473 | 1 | WASHER FLAT 1/4-M6 ZINC |\
| 12 | 055450 | 1 | PLUG PLASTIC 1.375 |\
|  | 025034 | 1 | PLUG STEEL 1.0625 (15KW) |\
| 13 | 0D4684 | 1 | HARNESS ADAPTER PLATE |\
| 14 | 0E7900 | 1 | SUBPLATE, LOAD CENTER |\
| 15 | 0F4790 | 10.5" | U-CHANNEL |\
| 16 | 022152 | 6 | WASHER LOCK #10 |\
| 17 | 064526 | 2 | SCREW HWHS #6-25 X 3/8" |\
| 18 | 0E6155 | 1 | ARM EXTENDER PIN |\
| 19 | 063378 | 4 | HOLDER CABLE TIE |\
| 20 | 0D3094 | 1 | HARNESS,GTS TO MAIN PANEL |\
| 21 | 074138 | 2 | LUG QUICK DISCONNECT NI-S 10X45 DEG BRASS / TIN |\
| 22 | 036933 | 6 | SCREW PPHM #10-32 X 3/8" |\
| 23 | 077033 | 6 | LUG SLDLSS 1/0-#14X9/16 AL/CU |\
| 24 | 048850 | 1 | BLOCK TERMINAL 20A 5 X 6 X 1100V |\
| 25 | 028739 | 4 | TIE WRAP 3.9" X .10" |\
| 26 | 0A2110 | 4 | SCREW SWAGE 1/4-20 X 1/2" ZINC |\
| 27 | 0D3191 | 1 | COVER, RELAY & TERMINAL BLOCK |\
| 28 | 0D3088 | 1 | WIRE HARNESS,GTS LOAD CENTER (NOT SHOWN FOR CLARITY) |\
| 29 | 073591 | 2 | FUSE HOLDER |\
| 30 | 073590A | 2 | FUSE 5A X BUSS |\
| 31 | 040213B | 4 | PCB SUPPORT SNAP-IN 1-3/8" |\
| 32 | 0E7888C | 3 | CIRCUIT BREAKER 20A 1P |\
| 33 | 0E7888 | 1 | CIRCUIT BREAKER 20A 2P |\
| 34 | 0E7888B | 5 | CIRCUIT BREAKER 15A 1P (12 CIRCUIT LOAD CENTER) |\
|  | 0E7888B |  | CIRCUIT BREAKER 15A 1P (10 CIRCUIT LOAD CENTER) |\
| 35 | 0E7888A | 3 | CIRCUIT BREAKER 30A 2P |\
| 36 | 0D3320 | 1 1 | COVER - HARNESS ENTRY |\
| 37 | 0D3093 | 1 | HARNESS, GTS TO EXT CONN BOX |\
|  | 0D8597 | 1 | HARNESS, GTS TO EXT CONN BOX (8.5KW) |\
| 38 | 075475 | 2 | SCREW PPHM M4-0.7 X 10 |\
| 39 | 0A7215 | 4 | SCREW SW 1/4"-20 X 5/8" WITH WASHER |\
| 40 | 0E6193 | 1 | BRACKET, ARM EXTENDER |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/98e508ef9e28382bff5dada1b88736a1a7128bebefe5a533d62172e46fa6b73d.jpg)\
\
|     |     |     |     |     |     |     |     |\
| --- | --- | --- | --- | --- | --- | --- | --- |\
|  |\
|  |  |  |  |  |  |  |  |\
| 1 | 0C5729 | 1 | ASSEMBLY, CRANKCASE HOUSING WITH | 37 | 0C3971C | 1 | ASSEMBLY, DIPSTICK WITH HANDLE |\
|  |  |  | SLEEVE | 38 | 0C5305 |  | TUBE, DIPSTICK |\
| 2 | 0E9843 | 1 | SEAL, 38 I.D. CRANKSHAFT | 39 | 0C3027 | 1 | O-RING, OIL CLR 3/8 X 1/2 |\
| 3 | 090388 | 3 | SCREW, TAPTITE M6-1.0 X 12 YC | 40 | 0E9842 | 1 | SEAL, 42 I.D. CRANKSHAFT |\
| 4 | 0C5372 | 1 | ASSEMBLY, BREATHER | 41 | 0C5731 | 1 | ASSEMBLY, HOUSING COVER WITH |\
| 5 | 0C3005 |  | GASKET, BREATHER COVER |  |  |  | SLEEVE |\
| 6 | 0E3372B | 3 | SEPARATOR, OIL BREATHER | 42 | 0C3006 | 9 | SCREW, HHFC M10-1.5 X 55 |\
| 7 8 | 0D8067A 071983 | 1 | ASSEMBLY, HEAD #1 G&S RETAINER, PISTON PIN 20 | 43 | 080318 | 8 | SCREW HHFC M6-1.0 X 25 |\
| 9 | 0C2981C | 4 | ROCKER, COVER NO OIL FILL | 44 | 093064 | 1 | ASSEMBLY, OIL FILL CAP |\
| 10 | 045761A | 1 | STUD M8-1.25/10MM X 30 G5 ZINC | 45 | 0C8808 | 2 | HOOK, LIFTING |\
| 11 | 0E2985 | 4 |  | 46 47 | 0D2723B | 1 | ROCKER, COVER WITH OIL FILL |\
| 12 | 021533 | 2 | PISTON, HC | 48 | 0C2979 | 2 | GASKET, VALVE COVER |\
| 13 | 0E1466 | 2 | SET, PISTON RING 90MM |  | 086515 | 8 | KEEPER, VALVE SPRING |\
| 14 | 0D4041 | 2 | PIN PISTON | 49 | 0D2274 | 4 | RETAINER, VALVE SPRING |\
| 15 | 0C2983 |  | ASSEMBLY, CAMSHAFT & GEAR | 50 | 0D3867 | 4 | SPRING, VALVE |\
| 16A | 0C2985A |  | SHAFT, GOVERNOR | 51 | 078672 | 2 | SEAL, VALVE STEM D7 |\
| 16B | 0C2985B | 2 | ROLLER BEARING, GOVERNOR PLATE | 52 | 0C5371 | 4 | WASHER, VALVE SPRING |\
| 17 | 0D4042 |  | ROLLER BEARING, GOVERNOR | 53 | 072694 | 4 | STUD, ROCKER ARM PIVOT |\
| 18 | 0A7811 |  | ASSEMBLY,GOVERNOR GEAR | 54 | 0D3998 | 4 | NUT HEX M8-1.0 G8 YEL CHR |\
| 19 | 0C2977 | 1 | SPOOL, GOVERNOR MACHINED | 55 | 0C3027 | 2 | O-RING, 3/8" X 1/2" |\
| 20 | 0C5943 |  | GASKET, CRANK CASE | 56 | 0D5313 | 4 | ROCKER ARM |\
| 21 | 0E4357E |  | SEAL, OIL PASSAGE | 57 | 0D6024 | 2 | PLATE, PUSH ROD GUIDE |\
|  |  |  | ASSEMBLY, CRANKSHAFT HORIZONTAL | 58 | 0C2976 | 12 | SCREW HHFC M8-1.25 X 65 |\
| 22 | 0E3223 |  | DIRECT DRIVE | 59 | 086516 | 2 | VALVE, EXHAUST |\
| 23 | 0D2157 | 2 2 | ASSEMBLY, CONNECTING ROD SCREW SHC M6-1.0 X 50 G8.8 | 60 61 | 0C2229 | 2 | VALVE, INTAKE |\
| 24 | 0E6098 | 1 | SCREEN, OIL PICKUP | 62 | 083897 0D8067B | 4 | TAPPET, SOLID |\
| 25 | 0D4123A |  | ASSEMBLY, OIL PUMP | 63 |  | 1 | ASSEMBLY, HEAD #2 G&S |\
| 26 | 078699E | 2 | SLEEVE, SEAMED DOWEL 10 DIA. | 64 | 0D9853D 0C2978 | 4 | PUSHROD, 147 |\
| 27 | 0C3011 | 2 | COVER, OIL RELIEF | 65 | 043790 | 2 | GASKET, HEAD BARBED ELBOW 90 3/8NPT X 3/8 |\
| 28 | 0C3009 | 2 | SPRING, OIL RELIEF | 66 | 0D4010 | 1 | KIT GASKET |\
| 29 | 0C3010 | 2 | BALL, 1/2D OIL RELIEF | 67 | 0D4011 |  | KIT PISTON & RINGS |\
| 30 | 093873 | 2 | WASHER, LOCK RIB M6 | 68 | 0D4012 |  | KIT BREATHER ASSEMBLY |\
| 31 | 0C5315 |  | GEROTOR, OUTER | 69 | 0D4013 |  | KIT GOVERNOR ASSEMBLY |\
| 32 | 0C5998 |  | CLAMP, OIL TUBE | 70 | 0D8675A | 1 | KIT HEAD ASSEMBLY CYLINDER 1 |\
| 33 | 0D1667 | 1 | ARM, GOVERNOR | 71 | 0D8675B | 1 | KIT HEAD ASSEMBLY CYLINDER 2 |\
| 34 | 0C2991 | 2 | E-RING, GOVERNOR ARM | 72 | 0D4015 |  | KIT OIL RELIEF |\
| 35 | 0C2988 |  | THRUST WASHER, GOVERNOR | 73 | 0D4016 |  | KIT GEAR COVER |\
| 36 | 0C2992 |  | BUSHING, GOVERNOR LOWER |  |  |  |  |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/a95e9c485e02be099f38e7e58a443ca3bffe1dbbd5022587c74742135e3ccbb8.jpg)\
\
|     |     |     |     |     |     |     |     |\
| --- | --- | --- | --- | --- | --- | --- | --- |\
| ITEM | PART NO. | QTY. | DESCRIPTION | ITEM PART NO. QTY. DESCRIPTION |\
|  |  |  |  |  |  |  |  |\
| 74 | 0C5136A | 2 | KNOB, AIR CLEANER | 111 | 0D1131 | 1 GUARD, FAN |  |\
| 75 | 0C3024 | 1 | COVER, AIRBOX NG/LP | 112 | 045756 | 25 | SCREW TAPTITE M6-1X10 YELLOW |\
| 76 | 0C3040 | 1 | PRE-CLEANER, |  |  |  | CHROME |\
| 77 | 0C8127 | 1 | ELEMENT, AIR CLEANER | 113 | 0C9763 | 4 | NUT, GROMMET 1/4 PLUG |\
| 78 | 0D8564A | 1 | ASSEMBLY, MIXER/AIRBOX 990 | 114 | 0C3036A | 1 | HOSE, BREATHER |\
|  | 0D8564B | 1 | ASSEMBLY, MIXER/AIRBOX 760 | 115 | 022145 | 1 | WASHER FLAT 5/16-M8 ZINC |\
| 79 | 0D2595 | 4 | SCREW SHOULDER (8MM) M6-1.0 X 18 | 116 | 022129 |  | WASHER LOCK M8-5/16 |\
| 80 | 0D4417 | 4 | WASHER,RUBBER 1/4" X 1/8" THICK | 117 | 0C3018 | 1 | WRAPPER, UPPER CYLINDER 1 |\
| 81 | 0C3025 | 1 | SWITCH, OIL PRESS | 118 | 0C3019 | 1 | WRAPPER, LOWER CYLINDER 1 |\
| 82 | 0D3083 |  | ASSEMBLY, OIL DRAIN HOSE | 119 | 0D1142A | 1 | WRAPPER, LOWER CYLINDER 2 |\
| 83 | 0C7292 | 1 | NIPPLE, 3/4"-16 UNF | 120 | 0D1143 | 1 | WRAPPER, UPPER CYLINDER 2 |\
| 84 | 070185B | 1 | OIL FILTER | 121 | 0E6043 | 2 | SCREW TAPTITE M5-0.8 X 8 ZP |\
| 85 | 075281 | 1 | SWITCH, THERMAL 284F | 122 | 0F1177 | 1 | ASSEMBLY, GROUND WIRE |\
| 86 | 0F2094 | 2 | SCREW, M3-0.5 X 6 SEMS | 123 | 0C3052 | 1 | ASSY, IGNITION COIL GV-990 CYLINDER |\
| 87 |  |  |  |  |  | 2 |  |\
| 88 | 035461 | 2 | BARBED STR 1/4NPT X 3/8 | 124 | 022097 | 4 | WASHER LOCK M6-1/4 |\
| 89 | 0F6301 | 4 | CLAMP, HOSE OETIKER 16.5mm | 125 | 092079 | 4 | SCREW TAPTITE M6-1.0 X 25 BP |\
| 90 | 0C9806 | 2 | HOSE, 3/8" I.D. X 6" LONG | 126 | 0E4271 | 1 | STARTER |\
| 91 | 0C3026 | 1 | COOLER, OIL | 127 | 0D4529 | 2 | SPARKPLUG |\
| 92 | 0C9764 | 4 | PLASTITE,1/4-15 X 3/4 | 128 | 022129 | 2 | WASHER LOCK M8-5/16 |\
| 93 | 0C3043 | 2 | GASKET, MANIFOLD / PORT | 129 | 061906 | 2 | SCREW HHC M8-1.25 X 85 G8.8 |\
| 94 | 0C7694 | 1 | MANIFOLD CYLINDER 2 | 130 | 082774 | 1 | KEY, WOODRFF 4 X 19D |\
| 95 | 0C7693 | 1 | MANIFOLD CYLINDER 1 | 131 | 0E5343 |  | NUT HEX LOCK M10-1.50 |\
| 96 | 0C3041A | 2 | SLEEVE, RUBBER | 132 | 0C8468 |  | SPRING, ANTI-LASH |\
| 97 | 070008 | 4 | WASHER FLAT M8 SS | 133 | 0C3048 |  | ROD, GOVERNOR CONTROL |\
| 98 | 070006 | 4 | WASHER LOCK M8 SSTL | 134 | 0D3754 |  | ASSEMBLY, GOVERNOR LEVER |\
| 99 | 040976 | 4 | SCREW SHC M8-1.25 X 20 G12.9 | 135 | 0D3742 | 1 | SPRING, GOVERNOR |\
| 100 | 0C3016A |  | PLATE, BACKING WITH OIL COOLER | 136 | 0C8482 | 1 | ASSEMBLY, GOVERNOR ADJUSTER |\
| 101 | 0E4997 | 1 | GROUND WIRE CONNECTOR | 137 | 0E0486 |  | SCREW SHC M10-1.5 X 75 G10.9 |\
| 102 | 0C3725B |  | FLYWHEEL ASSEMBLY | 138 | 0D3743 |  | SPRING, GOVERNOR IDLE |\
| 103 | 0C3031 | 1 | FAN, NYLON | 139 | 0D3705 | 1 | ASSEMBLY, GOVERNOR ADJUSTER |\
| 104 | 0C3032 | 1 | PLATE, FAN |  |  |  | BRACKET |\
| 105 | 0A5992 | 2 | WASHER SHAKEPROOF INT M8 SS | 140 | 0C2993 | 1 | SEAL, GOVERNOR SHAFT |\
| 106 | 051754 | 2 | SCREW HHC M8-1.25 X 12 G8.8 | 142 | 045771 | 1 | NUT HEX M8-1.25 G8 |\
| 107 | 0C3033 |  | WASHER, 25mm I.D. | 143 | 0D6147 | 7 | SCREW HHFC M6-1.0 X 10mm |\
| 108 | 0C3034 |  | NUT,HEX M24 | 144 | 0E8152 |  | O-RING 0.49" I.D. X 0.07" THICK |\
| 109 | 0C8549A |  | SNORKEL, AIR INTAKE | 145 | 0E7743 | 1 | ASSY, IGNITION COIL 270mm CYLINDER |\
| 110 | 0C3022A | 1 | HOUSING, BLOWER NG COOLER |  |  |  | 1 |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/b48bdb456f7a45447089e5d59a40297d44967dc7f529c1d89df71d74d653e1f2.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| EM | PART NO. | QTY. | DESCRIPTION |\
|  |  |  |  |\
| 1 | 0C6934 | 1 | ADAPTOR, ENGINE |\
| 2 | 0C9935H | 1 | STATOR |\
| 3 | 0C9934H |  | ROTOR |\
| 4 | 0C6043A |  | CARRIER, REAR BEARING |\
| 5 | 0C8096 |  | FAN, 8" CURVED BLADE |\
| 6 | 0C9593 |  | MUFFLER |\
| 7 | 0D3220 | 1 | TAIL PIPE, MUFFLER |\
| 8 | 0C8860 | 1 | PANEL, MUFFLER BASE |\
| 9 | 031971 | 1 | BEARING #6205-2RS-C3 |\
| 10 | 0C3168 | 3 | 5/16 SPECIAL L/WASH |\
| 11 | 056147 | 1 | BOLT ROTOR HHCS 5/16"-24 X 13-1/2" G5 |\
| 12 | 0D1847 | 4 | BOLT STATOR HHCS M8-1.25 x 305mm |\
| 13 | 0C7038C | 1 | BRACKET, ALTERNATOR MOUNTING |\
| 14 | 0D1647 |  | DUCT, ALTERNATOR AIR |\
| 15 | 0D2558 |  | GASKET, ALTERNATOR AIR DUCT |\
| 16 | 0C7038B |  | BRACKET, ENGINE MOUNTING |\
| 17 | 0C7758 | 4 | RUBBER MOUNT |\
| 18 | 0388050AE0 | 1 | CABLE, #6 40" BLACK BATTERY |\
| 19 | 0C2417A | 1 | EARTH STRAP 3/8X 3/8 |\
| 20 | 082121C | 1 | CLIP-J VINYL COAT .625 ID |\
| 21 | 066386 | 1 | ASSEMBLY BRUSH HOLDER |\
| 22 | 029451 | 1.8 FT | TAPE ELEC UL FOAM 1/8 X 1/2 |\
| 23 | 049451 | 1 | WASHER FLAT .406ID X 1.62OD |\
| 24 | 022237 | 4 | WASHER LOCK 3/8 |\
| 25 | 022511 | 4 | BOLT HHC 3/8-16 X 1-1/4 G5 |\
| 26 | 022131 | 4 | WASHER FLAT 3/8 ZINC |\
| 27 | 039287 | 4 | SCREW HHC M8-1.25 X 45 G8.8 |\
| 28 | 022145 | 12 | WASHER FLAT 5/16 ZINC |\
| 29 | 049820 | 4 | NUT LOCK HEX M8-1.25 NYL INSRT |\
| 30 | 090388 | 3 | SCREW TAP M6-1.0X12 BP |\
| 31 | 022129 | 13 | WASHER LOCK M8-5/16 |\
| 32 | 022259 | 8 | NUT HEX 5/16-18 STEEL |\
| 33 | 059637 | 2 | SCREW TAPTITE 3/8-16X 3/4" BP |\
| 34 | 048031K | 3 | BAND, HOSE CLAMP 35.05 DIA. |\
| 35 | 0C9592 | 1 | BELLOWS |\
| 36 | 048031M | 2 | HOSE CLAMP 3/4" |\
| 37 | 040976 | 2 | SCREW SHC M8-1.25 X 20 G12.9 |\
| 38 | 0C2824 |  | SCREW TAPR #10-32 X 9/16 |\
| 39 | 025145 | 1 | U-BOLT 5/16"-18 X 1.25" W/ SADDLE |\
| 40 | 090239 |  | GASKET, EXHAUST |\
| 41 | 0C6989 |  | STINGER, ENGINE AIR IN |\
| 42 | 0D1214 | 1 | BASE, AIR CLEANER |\
| 43 | 0C8127 | 1 | ELEMENT, AIR CLEANER |\
| 44 | 0C3024 | 1 | COVER, AIR CLEANER NG/LP |\
| 45 | 0D2273 | 1 | TUBE, 1.25"O.D. x 20Ga. x 12.125" LONG |\
| 46 | 055934N | 1 | CLAMP VINYL 1.31 X .281 Z |\
| 47 | 0F7065 | 1.25 FT | HOSE LP 1/2" I.D. |\
| 48 | 0C5136A | 2 | KNOB, AIR CLEANER |\
| 49 | 074906 | 4 | SCREW TAPTITE M6-1 X 20 BP |\
| 50 | 022473 | 4 | WASHER FLAT 1/4 ZINC |\
| 51 | 0D4662 | 6 | SCREW HHTT M8-1.2 X 20 BP |\
| 52 53 | 0C8290 066849 | 1 2 | GASKET, PANEL SCREW HHTT M5-0.8 X 16 |\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators 12 kW and 15 kW Generator – Drawing No. 0D3417-L\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/194c150d7207321e703d990952928c8dd5c772c499929a92648dc564866a9e6a.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| TEM | PART NO. | QTY. | DESCRIPTION |\
|  |  |  |  |\
| 1 | 0C6934 | 1 | ADAPTOR, ENGINE |\
| 2 | 0C7930 | 1 | STATOR 12KW |\
|  | 0D2359 |  | STATOR 13KW / 15KW |\
| 3 | 0C7944 | 1 | ROTOR 12KW |\
|  | 0D2356 |  | ROTOR 13KW / 15KW |\
| 4 | 0C6043 | 1 | CARRIER, REAR BEARING |\
| 5 | 0D2336 | 1 | FAN, 12" CURVED BLADE |\
| 6 | 0D6634 | 1 | MUFFLER |\
| 7 | 0D3220 | 1 | TAIL PIPE, MUFFLER |\
| 8 | 0C8101 | 1 | PANEL, MUFFLER BASE |\
| 9 | 056482 | 1 | BEARING 1.1811-2.8346 |\
| 10 | 0C3168 | 3 | 5/16 SPECIAL LOCK WASHER |\
| 11 | 0D1838 | 1 | BOLT, HHCS 3/8"-24 x 15.50" |\
| 12 | 0D1846 | 4 | BOLT, HHCS M8-1.25 x 345mm |\
| 13 | 0C7038 | 1 | BRACKET, ALTERNATOR MOUNTING |\
| 14 | 0D1609 | 1 | DUCT, ALTERNATOR AIR |\
| 15 | 0D2559 | 1 | GASKET, ALTERNATOR AIR DUCT |\
| 16 | 0C7038A | 1 | BRACKET, ENGINE MOUNTING |\
| 17 | 0C7758 | 4 | RUBBER MOUNT |\
| 18 | 0388050AD0 | 1 | CABLE, #6 48" BLACK BATTERY |\
| 19 | 0C2417A | 1 | EARTH STRAP 3/8X 3/8 |\
| 20 | 082121C | 1 | CLIP-J, VYNL COAT 0.625" ID |\
| 21 | 066386 | 1 | ASSEMBLY BRUSH HOLDER |\
| 22 | 029451 | 2.6 FT | TAPE ELEC UL FOAM 1/8 X 1/2 |\
| 23 | 049451 | 1 | WASHER FLAT .406ID X 1.62OD |\
| 24 | 022237 | 5 | WASHER LOCK 3/8 |\
| 25 | 022511 | 4 | SCREW HHC 3/8-16 X 1-1/4 G5 |\
| 26 | 022131 | 4 | WASHER FLAT 3/8 ZINC |\
| 27 | 051731 | 4 | SCREW HHC M8-1.25 X 50 G8.8 |\
| 28 | 022145 |  | WASHER FLAT 5/16 ZINC |\
| 29 | 049820 | 12 | NUT LOCK HEX M8-1.25 NYL INSERT |\
| 30 | 045756 | 4 | SCREW TAPTITE M6-1.0X10 BP |\
| 31 | 022129 | 2 | WASHER LOCK M8-5/16 |\
| 32 | 022259 | 10 | NUT HEX 5/16-18 STEEL |\
| 33 | 059637 | 8 | SCREW TAPTITE 3/8-16 X 3/4 BP |\
| 34 | 0D4662 | 2 | SCREW 5/16-18X3/4" HH THD ROLL |\
| 35 | 0F7065 | 4 |  |\
| 36 |  | 3 FT | HOSE RES 1/2 LP GAS |\
|  | 048031M | 4 | HOSE CLAMP 3/4" I.D. |\
| 37 | 0F0462 | 4 | NUT HEX W/TOOTH WSHR M8-1.25 |\
| 38 | 0C2824 025145 | 1 | SCREW TAP-R #10-32 x 9/16 |\
| 39 |  | 1 | U-BOLT 5/16"-18 X 1.25" WITH SADDLE |\
| 40 | 0C4138 | 2 | GASKET, EXHAUST PORT |\
| 41 | 040173 | 2 | CLAMP HOSE #5.5 0.62"-0.62" |\
| 42 43 | 074995 066849 | 1.44 FT 2 | HOSE 1\|4 ID LPG 350PSI UL21 SCREW HHTT M5-0.8 X 16 |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/8a24d1e0fa2a45d29d6404f9591ba6d9b5f3b991a2d8686d8540fa1f6635d382.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| TEM | PART NO. | QTY. | DESCRIPTION |\
|  |  |  |  |\
| 1 | 0E3221 | 1 | ASSEMBLY, CONNECTING ROD |\
| 2 | 0E1466 | 1 | PIN, PISTON D20 |\
| 3 | 021533 |  | SET, PISTON RING 90MM |\
| 4 | 0E2985 | 1 | PISTON, HC |\
| 5 | 071983 | 2 | RETAINER, PISTON PIN 20 |\
| 6 | 0E8440 | 1 | ASSEMBLY, CRANKSHAFT GH410 SMALL TAPER |\
| 7 | 0A7628 | 1 | ARM, GOVERNOR RC45 |\
| 8 | 078658 | 1 | PIN, "R" GOVERNOR ARM |\
| 9 | 078659 | 2 | WASHER, GOVERNOR ARM THRUST |\
| 10 | 088261E | 1 | CRANKCASE, SUBASSEMBLY WITH PLUGS GH410 |\
| 11 | 0E3812 | 2 | SEAL, 35 I.D. CRANKSHAFT |\
| 12 | 0E6519 | 1 | ASSEMBLY, GOVERNOR GEAR |\
| 13 | 078645 | 1 | C-RING, GOVERNOR GEAR RETAINER |\
| 14 | 0A7811 | 1 | SPOOL, GOVERNOR- MACHINE |\
| 15 | 0A9877 | 1 | ASSEMBLY, CAMSHAFT & GEAR |\
| 16 | 076701 |  | GASKET , CRANKCASE |\
| 17 | 021713B |  | GASKET, HEAD 410 |\
| 18 | 078691 |  | COVER, OIL PRESSURE RELIEF |\
| 19 | 0A5771 |  | SPRING, OIL RELIEF 360 |\
| 20 | 0A5776 | 1 | BALL, DIA 11/32 PRESSURE RELIEF |\
| 21 | 076361 | 1 | WASHER, THRUST GOVERNOR GEAR |\
| 22 | 0A8898D | 1 | ASSEMBLY, COVER, GEAR TOP CHECK / FILL |\
| 23 | 0D2274 | 2 | RETAINER, VALVE SPRING |\
| 24 | 0C4391 | 2 | VALVE SPRING LF |\
| 25 | 086025 | 1 | SET,GEROTOR 12 THK |\
| 26 | 0E3341 | 1 | BALANCER |\
| 27 | 021714 | 1 | ASSEMBLY,CYLINDER HEAD SEATS & GUIDES |\
| 28 | 086516 | 1 | VALVE, EXHAUST |\
| 29 | 086517 | 1 | VALVE, INTAKE |\
| 30 | 0D9853B | 2 | PUSH ROD 174.9 |\
| 31 | 083897 | 2 | TAPPET |\
| 32 | 077158 | 1 | ASSEMBLY, SCREEN OIL PICK-UP |\
| 33 | 0C3150 | 1 | GASKET, ROCKER COVER 410 |\
| 34 | 072694 | 2 | STUD, D20 PIVOT BALL |\
| 35 | 083907 | 2 | ROCKER ARM |\
| 36 | 072696 | 2 | NUT, JAM (ROCKER ARM) |\
| 37 | 078694 | 1 | PLATE, PUSH ROD GUIDE |\
| 38 | 021742 | 4 | SCREW, HHFL M10-1.5 X 105 |\
| 39 | 0D6094 | 1 | ASSEMBLY, ROCKER COVER BREATHER |\
| 40 | 076329 | 1 | PLUG, OIL FILL PLASTIC |\
| 41 | 0E0057 | 1 | O-RING 17.8 I.D. x 2.4 |\
| 42 | 0D4788 | 1 | PLUG, STANDARD PIPE 3/8 STEEL SQUARE HEAD |\
| 43 | 074908 | 1 | SCREW, TAPTITE M5-0.8 X 10 BP |\
| 44 | 086515 | 4 | KEEPER, VALVE SPRING |\
| 45 | 078606 | 4 | SCREW & LOCKWASHER M6-1 X 12 |\
| 46 | 0A1442 | 8 | SCREW, HHFC M8-1.25 X 42 |\
| 47 | 078672 | 1 | SEAL, VALVE STEM D7 |\
| 48 | 089673 | 2 | WASHER, VALVE SPRING |\
| 49 | 0B2104 | 1 | WASHER, LARGE SPRING |\
| 50 | 078699C | 2 | DOWEL, SEAMED SLEEVE |\
| 51 | 0A7627 | 1 | SHAFT, GOVERNOR RC55 |\
| 52 | 043790A | 1 | BARBED ELBOW 90 3/8NPT X 3/8 LOCKTITE |\
| 53 | 088590 | 1 | DOWEL DIA 12 X 18L |\
| 54 | 078699B | 1 | DOWEL, SLEEVE SEAMED 12 DIA. |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/252fd47c38073da72591e2cdea924e42ebcdd2f0409e9b78b1cb9dc4f7159c9f.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| TEM | PART NO. | QTY. | DESCRIPTION |\
|  |  |  |  |\
| 1 | 0C1069 | 5 | SCREW, TAPTITE M6-1.0X8 YELLOW CHROME |\
| 2 | 0D2922 | 1 | HOUSING, BLOWER |\
| 3 | 0C8435 | 1 | TUBE, DIPSTICK |\
| 4 | 0C9997 | 1 | GUARD, FAN |\
| 5 | 088434 | 1 | WRAPPER, BOTTOM |\
| 6 | 045756 | 11 | SCREW, TAPTITE M6-1X10 YELLOW CHROME |\
| 7 | 0C4176A | 1 | WRAPPER, TOP |\
| 8 | 0D9004A | 1 | ASSY, STARTER |\
| 9 | 059985 | 2 | SCREW, SHC M8-1.25 X 45 G12.9 |\
| 10 | 022129 | 3 | WASHER, LOCK M8-5/16 |\
| 11 12 | 0C2458A | 1 | BACKPLATE, L/F D/F |\
|  | 083512 | 1 | SCREW, TAPTITE M8-1.25 X 16 BP |\
| 13 | 0D1401A | 1 | BREATHER TUBE |\
| 14 | 091039 | 1 | GASKET, INTAKE ADAPTER |\
| 15 | 0C9619 | 1 | ASSEMBLY, PLASTIC CARB |\
| 16 | 049811 | 2 | WASHER, FLAT M6 |\
| 17 | 022097 | 4 | WASHER, LOCK M6-1/4 |\
| 18 | 040945 | 2 | SCREW, SHC M6-1.0 X 20 G12.9 |\
| 19 | 086999 | 1 | GASKET,OIL FILTR ADAPTER |\
| 20 | 0D5667A |  | ADAPTER, OIL FILTER |\
| 21 | 049821 | 2 | SCREW, SHC M8-1.25 X 30 G12.9 |\
| 22 | 099236 | 1 | SWITCH, OIL 8.0 PSI |\
| 23 | 070185B | 1 | OIL FILTER |\
| 24 | 082774 | 1 | KEY, WOODRFF 4 X 19D |\
| 25 | 091222E | 1 | FLYWHEEL WITH RING GEAR 32DEG. |\
| 26 | 067198N | 1 | WASHER,BELV-20 X 2.2 |\
| 27 | 067890 |  | NUT, HEX - FLYWHEEL |\
| 28 | 0E7585 |  | SPARKPLUG |\
| 29 | 072734 |  | ASSEMBLY,GOVERNOR LEVER 12 HP |\
| 30 | 072735 |  | ROD,GOVERNOR CONTROL. |\
| 31 | 0C3978 | 1 | SPRING, ANTI-LASH |\
| 32 | 0C6040 | 1 | ASSEMBLY, WIRE |\
| 33 | 0D9760 | 1 | ASSEMBLY, IGNITION COIL |\
| 34 | 092079 | 2 | SCREW, TAPTITE M6-1.0 X 25 BP |\
| 35 | 0F3800 | 1 | SPRING GOVERNOR |\
| 36 | 083502 | 1 | BOLT, GOVERNOR ADJUST M5 |\
| 37 | 082025 |  | NUT HEX LOCK M5-0.8 NYINS ZINC |\
| 38 | 0D3083 |  | ASSEMBLY, OIL DRAIN HOSE |\
| 39 | 0E7887C |  | ASSEMBLY, CAP & DIPSTICK |\
| 40 | 090072 |  | O-RING 9/16 X 3/4 X 3/32 |\
| 41 | 075281 | 1 | SWITCH, THERMAL |\
| 42 | 022145 | 1 | WASHER FLAT 5/16 - M8 |\
| 43 | 0F2094 | 2 | SCREW, M3-0.5 X 6 SEMS |\
| 44 | 0C4373 | 1 | SPACER, ENDFRAME |\
| 45 | 022717B | 1 | GOMMET |\
| 46 | 0F3865 | 1 | SPRING SECONDARY |\
| 47 | 0F3855 |  | BRACKET SECONDARY GOVERNOR SPRING |\
| 48 | 039253 |  | SCREW HHC M8-1.25 x 20 |\
| 49 | 0D3751 |  | SPRING, IDLE RETURNING |\
| 50 | 0F3921 |  | BARREL GOVERNOR ADJUSTMENT |\
| 51 | 0C8493 | 1 | SCREW SHC M5-0.8 x 30 |\
| 52 | 0D8758 | 1 | ENGINE LIFT HOOK |\
\
### Air-cooled 7 kW, 12 kW and 15 kW Generators Gas Regulator – Drawing No. 0D8720-H\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/b924c52b4b2391388581450c790d7c17975832ed1c885f1b961f90973177565b.jpg)\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| 1 | 0D5694 | 1 | CASTING, TWIN REGULATOR HOUSING |\
| 2 | 0F5022 | 1 | SOLENOID COIL, 12VDC |\
| 3 | 0C4647 | 1 | GASKET , SOLENOID |\
| 4 | 0D4166 | 1 | PLUNGER, LP REGULATOR ASSEMBLY |\
| 5 | 0C6070 | 1 | SPRING-SOLENOID, PLUNGER |\
| 8 | 0F4795 | 4 | SCREW PPHM SEMS M4-0.7 X 10 |\
| 9 | 0C5760J | 1 | JET, GN 410 ENGINE LP (7KW) |\
| 10 | 0C6606 | 2\* | BARBED STRAIGHT 1/2NPT x 1/2 |\
| 11 | 097934 | 2\* | O-RING, CHECK VALVE |\
| 12 | 0C4645 | 2\* | ADJUSTER SCREW, TWIN REGULATOR |\
| 13 | 0C5761 | 2 | LEVER, REGULATOR |\
| 14 | 0C5968 | 2 | SUPPORT, INLET SEAL |\
| 15 | 0C6066 | 2 | SEAL, INLET |\
| 16 | 0C5759 | 2 | PIN, PIVOT ARM |\
| 17 | 0C5764 | 2 | SPRING, REGULATOR |\
|  | 0C5764A | 2 | SPRING, REGULATOR (7KW) |\
| 18 | 070728 | 4 | SCREW, PFHMS M3-0.5 x 5 |\
| 19 | 0C6069 | 2 | GASKET, DIAPHRAGM |\
| 20 | 0C5762 | 2 | COVER, TWIN REGULATOR |\
| 21 | 045764 | 16 | SCREW, TAPTITE M4X8 BP |\
\
### ITEM PART NO. QTY. DESCRIPTION\
\
|     |     |     |     |\
| --- | --- | --- | --- |\
| 22 | 0C6731 | 2 | RIVET, POP .118 X .125 |\
| 23 | 0C6067 | 2 | SUPPORT, DIAPHRAGM |\
| 24 | 0C4706 | 2 | DIAPHRAGM, TWIN REGULATOR |\
| 25 | 0C6068 | 2 | CAP, DIAPHRAGM SUPPORT |\
| 26 | 0C4643A | 2 | INLET, TWIN REGULATOR 11.11 DIA. |\
| 27 | 026073 | 1 | PLUG, STANDARD PIPE 1/8" STEEL SQUARE HEAD |\
|  | 026073 | 2 | PLUG, STANDARD PIPE 1/8" STEEL SQUARE HEAD (7KW) |\
| 28 | 0A4032 | 2\* | PIN, LIMITED ADJUSTMENT |\
| 29 | 0D3308 | 4 | WASHER, FLAT M3 X 10mm O.D. |\
| 30 | 024310 | 1 | PLUG, STANDARD PIPE 1/2" STEEL |\
| 31 |  |  | SQUARE HEAD (7KW) |\
| 32 | 028414A 0D5698A | 1 1 | BARBED STRAIGHT 1/8"NPT X 1/4" |\
|  |  |  | JET IDLE PRIMER PHILLIPS HD (V-TWIN ONLY) |\
| 37 | 0D3973 | 1 | PLUG, EXPANSION 16mm |\
\
![](https://gensetservices.com/wp-content/themes/gensetservices/PartsPDFs/images/36878a0bfea893d06b75e3c8207d99abe8eea92d37c08f7088de979f4e13ec1b.jpg)\
\
NOTE: This Emission Control Warranty Statement pertains to this product only IF the generator size is $\\mathbf { 1 5 ~ k W }$ or below.\
\
### CALIFORNIA EMISSION CONTROL WARRANTY STATEMENT YOUR WARRANTY RIGHTS AND OBLIGATIONS\
\
The California Air Resources Board (CARB) and Generac Power Systems, Inc. (Generac) are pleased to explain the Emission Control System Warranty on your new engine.\* In California, new utility, and lawn and garden equipment engines must be designed, built and equipped to meet the state’s stringent anti-smog standards. Generac will warrant the emission control system on your engine for the periods of time listed below provided there has been no abuse, neglect, unapproved modification or improper maintenance of your engine.\
\
Your emission control system may include parts such as the carburetor, ignition system and exhaust system. Generac will repair your engine at no cost to you for diagnosis, replacement parts and labor, should a warrantable condition occur.\
\
### MANUFACTURER’S EMISSION CONTROL SYSTEM WARRANTY COVERAGE:\
\
Emissions control systems on 1995 and later model year engines are warranted for two years as hereinafter noted. If, during such warranty period, any emission-related component or system on your engine is found to be defective in materials or workmanship, repairs or replacement will be performed by a Generac Authorized Warranty Service Facility.\
\
### PURCHASER’S/OWNER’S WARRANTY RESPONSIBILITIES:\
\
As the engine purchaser/owner, you are responsible for the completion of all required maintenance as listed in your factory supplied Owner’s Manual. For warranty purposes, Generac recommends that you retain all receipts covering maintenance on your engine. However, Generac cannot deny warranty solely due to the lack of receipts or for your failure to ensure the completion of all scheduled maintenance.\
\
As the engine purchaser/owner, you should, however, be aware that Generac may deny any and/or all warranty coverage or responsibility if your engine, or a part/component thereof, has failed due to abuse, neglect , improper maintenance or unapproved modifications, or the use of counterfeit and/or “grey market” parts not made, supplied or approved by Generac.\
\
You are responsible for contacting a Generac Authorized Warranty Service Facility as soon as a problem occurs. The warranty repairs should be completed in a reasonable amount of time, not to exceed 30 days.\
\
Warranty service can be arranged by contacting either your selling dealer or a Generac Authorized Warranty Service Facility. To locate the Generac Authorized Warranty Service Facility nearest you, call our toll-free number:\
\
### 1-800-333-1322\
\
IMPORTANT NOTE: This warranty statement explains your rights and obligations under the Emission Control System Warranty (ECS Warranty), which is provided to you by Generac pursuant to California law. See also the “Generac Limited Warranties for Generac Power Systems, Inc.,” which is enclosed herewith on a separate sheet, also provided to you by Generac. The ECS Warranty applies only to the emission control system of your new engine. If there is any conflict in terms between the ECS Warranty and the Generac Warranty, the ECS Warranty shall apply except in circumstances where the Generac Warranty may provide a longer warranty period. Both the ECS Warranty and the Generac Warranty describe important rights and obligations with respect to your new engine.\
\
Warranty service can be performed only by a Generac Authorized Warranty Service Facility. When requesting warranty service, evidence must be presented showing the date of the sale to the original purchaser/owner.\
\
If you have any questions regarding your warranty rights and responsibilities, you should contact Generac at one of the following addresses:\
\
For Air-cooled Product ... ATTENTION WARRANTY DEPARTMENT GENERAC POWER SYSTEMS, INC. P.O. BOX 297 WHITEWATER, WI 53190\
\
For Liquid-cooled Product ...\
\
ATTENTION WARRANTY DEPARTMENT GENERAC POWER SYSTEMS, INC.\
\
211 MURPHY DRIVE\
\
EAGLE, WI 53119\
\
Part 1\
\
### EMISSION CONTROL SYSTEM WARRANTY\
\
Emission Control System Warranty (ECS Warranty) for 1995 and later model year engines:\
\
(a) Applicability: This warranty shall apply to 1995 and later model year engines. The ECS Warranty Period shall begin on the date the new engine or equipment is purchased by/delivered to its original, end-use purchaser/owner and shall continue for 24 consecutive months thereafter.\
\
(b) General Emissions Warranty Coverage: Generac warrants to the original, end-use purchaser/owner of the new engine or equipment and to each subsequent purchaser/owner that each of its engines is ... (1) Designed, built and equipped so as to conform with all applicable regulations adopted by the CARB pursuant to its authority, and (2) Free from defects in materials and workmanship which, at any time during the ECS Warranty Period, may cause a warranted emissions-related part to fail to be identical in all material respects to the part as described in the engine manufacturer’s application for certification.\
\
(c) The ECS Warranty only pertains to emissions-related parts on your engine, as follows:\
\
(1) Any warranted, emissions-related parts that are not scheduled for replacement as required maintenance in the Owner’s Manual shall be warranted for the ECS Warranty Period. If any such part fails during the ECS Warranty Period, it shall be repaired or replaced by Generac according to Subsection (4) below. Any such part repaired or replaced under the ECS Warranty shall be warranted for the remainder of the ECS Warranty Period.\
\
(2) Any warranted, emissions-related part that is scheduled only for regular inspection as specified in the Owner’s Manual shall be warranted for the ECS Warranty Period. A statement in such written instructions to the effect of “repair or replace as necessary” shall not reduce the ECS Warranty Period. Any such part repaired or replaced under the ECS Warranty shall be warranted for the remainder of the ECS Warranty Period.\
\
(3) Any warranted, emissions-related part that is scheduled for replacement as required maintenance in the Owner’s Manual shall be warranted for the period of time prior to the first scheduled replacement point for that part. If the part fails prior to the first scheduled replacement, the part shall be repaired or replaced by Generac according to Subsection (4) below. Any such emissions-related part repaired or replaced under the ECS Warranty shall be warranted for the remainder of the ECS Warranty Period prior to the first scheduled replacement point for such emissions-related part.\
\
(4) Repair or replacement of any warranted, emissions-related part under this ECS Warranty shall be performed at no charge to the owner at a Generac Authorized Warranty Service Facility.\
\
(5) When the engine is inspected by a Generac Authorized Warranty Service Facility, the owner shall not be held responsible for diagnostic costs if the repair is deemed warrantable.\
\
(6) Generac shall be liable for damages to other original engine components or approved modifications proximately caused by a failure under warranty of any emission-related part covered by the ECS Warranty.\
\
(7) Throughout the ECS Warranty Period, Generac shall maintain a supply of warranted emission-related parts sufficient to meet the expected demand for such emission-related parts.\
\
(8) Any Generac authorized and approved emission-related replacement part may be used in the performance of any ECS Warranty maintenance or repairs and will be provided without charge to the owner. Such use shall not reduce Generac ECS Warranty obligations.\
\
(9) Unapproved, add-on, modified, counterfeit and/or “grey market” parts may not be used to modify or repair a Generac engine. Such use voids this ECS Warranty and shall be sufficient grounds for disallowing an ECS Warranty claim. Generac shall not be held liable hereunder for failures of any warranted parts of a Generac engine caused by the use of such an unapproved, add-on, modified, counterfeit and/or “grey market” part.\
\
### EMISSION RELATED PARTS INCLUDE THE FOLLOWING:\
\
1. Fuel Metering System:\
\
1.2) LPG/Natural Gas carburetion assembly and its internal components.\
\
a) Fuel controller (if so equipped) b) Mixer and its gaskets (if so equipped) c) Carburetor and its gaskets (if so equipped) d) Primary gas regulator (if so equipped) e) LP liquid vaporizer (if so equipped)\
\
2. Air Induction System including:\
\
a) Intake pipe/manifold b) Air cleaner\
\
3. Ignition System including:\
\
a) Spark plug b) Ignition module\
\
4. Catalytic Muffler Assembly (if so equipped) including:\
\
a) Muffler gasket b) Exhaust manifold\
\
5. Crankcase Breather Assembly including: a) Breather connection tube\
\
\\* Generac engine types covered by this warranty statement include the following:\
\
1. Prepackaged Standby Generator\
2. Auxiliary Power Unit (APU) Generator\
3. Standby Generator\
\
### GENERAC POWER SYSTEMS "TWO YEAR" LIMITED WARRANTY FOR GUARDIAN® "PREPACKAGED EMERGENCY AUTOMATIC STANDBY GENERATORS"\
\
For a period of two years from the date of original sale, Generac Power Systems, Inc. (Generac) warrants that its Guardian generator will be free from defects in material and workmanship for the items and period set forth below. Generac will, at its option, repair or replace any part which, upon examination, inspection and testing by Generac or a Guardian Authorized Warranty Service Dealer, is found to be defective. Any equipment that the purchaser/owner claims to be defective must be examined by the nearest Guardian Authorized Warranty Service Dealer. All transportation costs under the warranty, including return to the factory, are to be borne and prepaid by the purchaser/owner. This warranty applies only to Generac Guardian prepackaged emergency automatic standby generators sold and rated for use in "Standby" applications.\
\
### WARRANTY SCHEDULE\
\
YEARS ONE and TWO - $100 %$ (one hundred percent) transferable coverage on Labor and Part(s) listed (proof of purchase and maintenance is required):\
\
Engine - All Components\
\
Alternator - All Components\
\
Transfer System - All Components\
\
Steel enclosures are warranted against rusting for the first year of ownership only. Damage caused after receipt of generator is the responsibility of the owner and is not covered by this warranty. Nicks, scrapes, dents or scratches to the painted enclosure should be repaired promptly by the owner.\
\
All warranty expense allowances are subject to the conditions defined in Guardian's Warranty Policies, Procedures and Flat Rate Manual.\
\
### THIS WARRANTY SHALL NOT APPLY TO THE FOLLOWING:\
\
Guardian generators that utilize non-Guardian/Generac replacement parts.\
\
Guardian generators utilizing non-Guardian/Generac automatic transfer switches.\
\
Repairs or diagnostics performed by individuals other than Guardian/Generac authorized dealers not authorized in writing by Generac Power Systems.\
\
Any Guardian generators used as rental or trailer mounted applications.\
\
Units used for prime power in place of existing utility power where utility power is present or in place of utility power where utility power service does not normally exist.\
\
Costs of normal maintenance, adjustments, installation and start-up.\
\
Steel enclosures that are rusting due to the improper installation, location in a harsh or saltwater environment or scratched where integrity of paint applied is compromised.\
\
Failures caused by any contaminated fuels, oils, coolants or lack of proper fluid amounts.\
\
Failures due, but not limited, to normal wear and tear, accident, misuse, abuse, negligence or improper installation. As with all mechanical devices, the Generac engines need periodic part(s) service and replacement to perform well. This warranty will not cover repair when normal use has exhausted the life of a part(s) or engine.\
\
Failures caused by any external cause or act of God, such as collision, theft, vandalism, riot or wars, nuclear holocaust, fire, freezing, lightning, earthquake, windstorm, hail, volcanic eruption, water or flood, tornado or hurricane.\
\
Damage related to rodent and/or insect infestation.\
\
Products that are modified or altered in a manner not authorized by Generac in writing.\
\
Any incidental, consequential or indirect damages caused by defects in materials or workmanship, or any delay in repair or replacement of the defective part(s).\
\
Failure due to misapplication.\
\
Telephone, cellular phone, facsimile, internet access or other communication expenses.\
\
Living or travel expenses of person(s) performing service, except as specifically included within the terms of a specific unit warran period.\
\
Expenses related to "customer instruction" or troubleshooting where no manufacturing defect is found.\
\
Rental equipment used while warranty repairs are being performed.\
\
Costs incurred for equipment used for removal and/or reinstallation of generator, (i.e.; cranes, hoists, lifts, etc.)\
\
Overnight freight costs for replacement part(s).\
\
Overtime labor.\
\
Starting batteries, fuses, light bulbs and engine fluids. THIS WARRANTY IS IN PLACE OF ALL OTHER WARRANTIES, EXPRESSED OR IMPLIED. SPECIFICALLY, GENERAC MAKES NO OTHER WARRANTIES AS TO THE MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Some states do not allow limitations on how long an implied warranty lasts, so the above limitation may not apply to you.\
\
GENERAC'S ONLY LIABILITY SHALL BE THE REPAIR OR REPLACEMENT OF PART(S) AS STATED ABOVE. IN NO EVENT SHALL GENERAC BE LIABLE FOR ANY INCIDENTAL OR CONSEQUENTIAL DAMAGES, EVEN IF SUCH DAMAGES ARE A DIRECT RESULT OF GENERAC'S NEGLIGENCE. Some states do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation may not apply to you.\
\
This warranty gives you specific legal rights. You also have other rights from state to state.

---

## [PDF] Owner's Manual Automatic Transfer Switch - Generac Power Systems

**Source:** https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/100-200a-automatic-transfer-switch-owners-manual.pdf

### Owner’s Manual

### Automatic Transfer Switch

100 - 200 Amp, Service Entrance and Non-Service Entrance

|     |     |
| --- | --- |
| Model: |  |
| Serial: |  |
| Date Purchased: |  |

Model Number RXSW100A3SPD RXSW200A3SPD

### Section 1: Safety

Introduction .... 5

Read This Manual Thoroughly . . 5

Safety Rules ........ 5

Electrical Hazards .. 6

General Hazards.... 7

### Section 2: General Information

Introduction ..... 9

Unpacking ....... 9

Contents in Loose Parts Bag ............ 9

Equipment Description...... 9

Transfer Switch Mechanism.. ..9

Utility Service Circuit Breaker (if equipped) ..10

Transfer Switch Data Decal .... . 10

Transfer Switch Enclosure ........ . 10

Safe Use of Transfer Switch..... . 10

### Load Management Options........ .. 10

Smart A/C Module (SACM). 11 Smart Management Module (SMM) (sold separately) ... . 11 Application Considerations . . 11

### Surge Protection Device...... .. 12

Equipment Description .. ..12

Specifications .. . 12

Warranty . .12

### Section 3: Installation

Introduction to Installation..... 13

Mounting ........ 13

Open Enclosure... 13

Connecting Power Source and Generator

Power Supply..... . 14

Connecting Start Circuit Wires. 15

Connecting SACM....... 15

Control of Air Conditioner Load . . 15

Typical SACM Connections... 16

Smart A/C Module (SACM) . 16

Auxiliary Contact..... 16

Fault Current Label .... 17

### Section 4: Operation

Functional Tests and Adjustments.. 19

Manual Operation.... 19

Close to Utility Source Side.. .. 19

Close to Generator Source Side. .. 19

Return to Utility Source Side . . 20

Voltage Checks........ . 20

Utility Voltage Checks.. . 20

Generator Voltage Checks. . 20

Generator Tests Under Load. 20

Checking Automatic Operation . 21

Surge Protection Device Operation . 21

Installation Summary .......... 21

Shutting Generator Down While Under Load

or During a Utility Outage ..... . 21

Preparing for Maintenance. 22

Testing the SACM.... 22

SACM Fuse Service. 22

Testing The SMM .... 22

Section 5: Drawings and Diagrams Installation Drawing—100A SE & Non-SE/ 150-200A Non-SE.. . 23 Installation Drawing—150/200A SE.. . 24 Installation Drawing—Liquid Cooled Generator ..... . 25 Installation Drawing—Liquid-Cooled Generator ... . 26 Installation Drawing—Air-Cooled Generator SE and Non-SE Rated ATS . ..... 27 Installation Drawing—Air-Cooled Generator SE and Non-SE Rated ATS . .... 28

### This page intentionally left blank.

### Section 1: Safety

### Introduction

Thank you for purchasing a Generac Power Systems Inc. product. This unit has been designed to provide high performance, efficient operation, and years of use when maintained properly. This transfer switch is listed with ETL under the UL1008 standard.

### WARNING

Indicates a hazardous situation which, if not avoided, could result in death or serious injury.

(W000002)

### Read This Manual Thoroughly

### WARNING

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/cb1e1ea5d1d5c0477783f5a44e4c3a69fde52320a58f880c33f240de7af6f349.jpg)

Consult Manual. Read and understand manual completely before using product.Failure to completely understand manual and product could result in death or serious injury.

(W000100)

If any section of this manual is not understood, contact the nearest Independent Authorized Service Dealer (IASD) or Generac Customer Service at 1-888-436-3722 (1-888-GENERAC), or visit [www.generac.com](http://www.generac.com/) for starting, operating, and servicing procedures. The owner is responsible for proper maintenance and safe use of the unit.

SAVE THESE INSTRUCTIONS for future reference. This manual contains important instructions that must be followed during placement, operation, and maintenance of the unit and its components. Always supply this manual to any individual that will use this unit, and instruct them on how to correctly start, operate, and stop the unit in case of emergency.

### CAUTION

Indicates a hazardous situation which, if not avoided, could result in minor or moderate injury.

(C000003)

NOTE: Notes contain additional information important to a procedure and will be found within the regular text of this manual.

These safety alerts cannot eliminate the hazards that they indicate. Common sense and strict compliance with the special instructions while performing the action or service are essential to preventing accidents.

### Safety Rules

The manufacturer cannot anticipate every possible circumstance that might involve a hazard. The alerts in this manual, and on tags and decals affixed to the unit, are not all inclusive. If using a procedure, work method, or operating technique that the manufacturer does not specifically recommend, verify that it is safe for others and does not render the equipment unsafe.

Throughout this publication, and on tags and decals affixed to the unit, DANGER, WARNING, CAUTION, and NOTE blocks are used to alert personnel to special instructions about a particular operation that may be hazardous if performed incorrectly or carelessly. Observe them carefully. Alert definitions are as follows:

### DANGER

Indicates a hazardous situation which, if not avoided, will result in death or serious injury.

### Electrical Hazards

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/1a2274b619dc0f8b425d9c71edb01cc4f21abdf402650fefe1acbdebaa98355f.jpg)

### DANGER

Electrocution.High voltage is present at transfer switch and terminals.Contact with live terminals will result in death or serious injury.

(D000129)

Automatic start-up. Disconnect utility power and render unit inoperable before working on unit. Failure to do so will result in death or serious injury.

(D000191)

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/789f6a12e434042437d0f9ce0a1e20c2e349afba13b8cbea72f65329c1c6b6ce.jpg)

### DANGER

Electrocution.Water contact with a power source, if not avoided, will result in death or serious injury.

(D000104)

Equipment Malfunction. Installing a dirty or damaged transfer switch will cause equipment malfunction and will result in death or serious injury.

(D000119)

### WARNING

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/24caaeb5cdba1e190a8dbd8da768113ad342e204fdb692631cd31de3457d8fab.jpg)

### DANGER

Electrocution.In the event of electrical accident, immediately shut power OFF. Use nonconductive implements to free victim from live conductor. Apply first aid and get medical help.Failure to do so will result in death or serious injury.

Electric Shock. Only a trained and licensed electrician should perform wiring and connections to unit. Failure to follow proper installation requirements could result in death, serious injury, and equipment or property damage.

(W000155)

(D000145)

### CAUTION

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/477cda7f92306845a09901887aa0fae2a10efa4782560c8cfda50f6a873a912c.jpg)

### DANGER

Electrical backfeed.Use only approved switchgear to isolate generator from the normal power source.Failure to do so will result in death, serious injury, and equipment damage.

Equipment damage. Verify all conductors are tightened to the factory specified torque value. Failure to do so could result in damage to the switch base.

(C000120)

### CAUTION

Equipment damage. Perform functional tests in the exact order they are presented in the manual. Failure to do so could result in equipment damage.

(D000237)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/dd2cba8ecb8ee86b5635d53a7962fb87a2d5a67e468eda5d7f9138c4607a535a.jpg)

Equipment damage. Verify that voltage and current are within specification before energizing this equipment. Exceeding rated voltage and current will damage the auxiliary contacts.

(C000121)

Electrocution, equipment and property damage.Handle transfer switches carefully when installing. Never install a damaged transfer switch.Doing so could result in death or serious injury, equipment and property damage.

### DANGER

### CAUTION

(D000195)

(C000134)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/5443d72099b63d14c9010a8929be50764547dcf89758e8bc9eada9697cb5e5eb.jpg)

### DANGER

Electrocution.Turn utility supply OFF before working on utility connections of the transfer switch.Failure to do so will result in death or serious injury.

(D000123)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/9ef79b2d2f97ece3590d778c8f72d125cb3cef7f36f46a34a2b908779bb3167b.jpg)

### DANGER

Electrocution.Do not disable or modify the connection box door safety switch.Doing so will result in death or serious injury.

(D000157)

### General Hazards

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/94e90e2a6a976ef70d1c6dabc629862be0c854f1c54016d1b4c5e967f151bd77.jpg)

Electrical backfeed.Use only approved switchgear to isolate generator from the normal power source.Failure to do so will result in death, serious injury, and equipment damage.

(D000237)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/2c2f8f85ef8774c0ad5b1ec3a8537b95b60ad2cce759386dbdf1143597cddbbf.jpg)

Electrocution.In the event of electrical accident, immediately shut power OFF. Use nonconductive implements to free victim from live conductor. Apply first aid and get medical help.Failure to do so will result in death or serious injury.

### DANGER

(D000145)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/53f9e7e92ffa3c9e77454aac99366273d51b40b86f836b4feaf74777d04f4e7c.jpg)

### DANGER

Electrocution.High voltage is present at transfer switch and terminals.Contact with live terminals will result in death or serious injury.

### WARNING

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/4e3c338673b477e87d0369f4fb243ff20fe9f3cd49cb1d38892ebc880551ffe6.jpg)

Loss of life.This product is not intended to be used in a critical life support application.Failure to adhere to this warning could result in death or serious injury.

(W000209)

(D000129)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/85484e9b7d6bcbdb751b6b6603566532d4694cc168d87f5e1af02d33b4535ae2.jpg)

### DANGER

Electrocution.Turn utility supply OFF before working on utility connections of the transfer switch.Failure to do so will result in death or serious injury.

(D000123)

### WARNING

Equipment damage. This unit is not intended for use as a prime power source. It is intended for use as an intermediate power supply in the event of temporary power outage only. Doing so could result in death, serious injury, and equipment damage.

(W000247)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/77aa941d199ffb798cc2758406002a43b6fde998e4cc68aeaa8a75edf0cb9404.jpg)

### DANGER

Electrocution.Water contact with a power source, if not avoided, will result in death or serious injury.

(D000104)

Competent, qualified personnel should install, operate and service this equipment. Adhere strictly to local, state and national electrical and building codes. When using this equipment, comply with regulations established by the National Electrical Code (NEC), CSA Standard; the Occupational Safety and Health Administration (OSHA), or the local agency for workplace health and safety.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/61883f3036458956748ff9d313dc2a08e097989f0b3fa124a7a9b0768223953e.jpg)

### DANGER

Electrocution.Do not wear jewelry while working on this equipment.Doing so will result in death or serious injury.

If working on this equipment while standing on metal or concrete, place insulative mats over a dry wood platform. Work on this equipment only while standing on such insulative mats.

(D000188)

Never work on this equipment while physically or mentally fatigued.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/20a6d1e93f1f7bd0a3da15a2eeaf6da8ec65d8841cad318102b84320b4d407df.jpg)

### DANGER

Electrocution.Only authorized personnel should access transfer switch interior. Transfer switch doors should be kept closed and locked.Failure to do so will result in death or serious injury.

Any voltage measurements should be performed with a meter that meets UL3111 safety standards, and meets or exceeds overvoltage class CAT III.

(D000213)

### DANGER

Automatic start-up. Disconnect utility power and render unit inoperable before working on unit. Failure to do so will result in death or serious injury.

(D000191)

### This page intentionally left blank.

### Section 2: General Information

### Introduction

Thank you for purchasing a Generac transfer switch. This manual has been prepared especially for the purpose of familiarizing personnel with the design, application, installation, operation and servicing of the applicable equipment. Read this manual carefully and comply with all instructions. This will help to prevent accidents or damage to equipment that might otherwise be caused by carelessness, incorrect application, or improper procedures.

Every effort has been expended to make sure that the contents of this manual are both accurate and current. The manufacturer, however, reserves the right to change, alter or otherwise improve the product or manual at any time without prior notice.

### Unpacking

Carefully unpack the transfer switch. Inspect closely for any damage that might have occurred during shipment. The purchaser must file with the carrier any claims for loss or damage incurred while in transit.

Check that all packing material is completely removed from the switch prior to installation.

### Contents in Loose Parts Bag

Owner’s manual • Warranty statement • Manual operating handle • Storage bracket for manual operating handle • Fault current label Clear decal for fault current label

### Equipment Description

This automatic transfer switch is used for transferring electrical load from a utility (normal) power source to a generator (standby) power source. Transfer of electrical loads occurs automatically when the utility power source has failed or is substantially reduced and the generator source voltage and frequency have reached an acceptable level. The transfer switch prevents electrical feedback between two different power sources (such as the utility and generator sources) and, for that reason, codes require it in all standby electric system installations.

The transfer switch consists of a transfer mechanism, utility service disconnect circuit breaker (if equipped), and a Smart A/C module incorporating fuses and two terminal blocks for transfer switch connections.

### Transfer Switch Mechanism

See Figure 2-1. This switch is used with a single-phase system when the single-phase neutral line is to be connected to a neutral lug and is not to be switched.

Solderless, screw-type terminal lugs are standard.

The conductor size range is as follows:

|     |     |     |
| --- | --- | --- |
| SwitchRating | Wire Range | Conductor Tighten-ing Torque |
| 100A | #14-1/0 AWG (Cu/Al) | 50 in-lbs (5.6 Nm) |
| 150/200A | #6-250 MCM (Cu/AI) | 275 in-lbs (31 Nm) |

This transfer switch is suitable for control of motors, electric discharge lamps, tungsten filament and electric heating equipment where the sum of motor full load ampere ratings and the ampere ratings of other loads do not exceed the ampere rating of the switch and the tungsten load does not exceed 30 percent of the switch rating.

This UL listed transfer switch is for use in optional standby systems only (NEC article 702).

A 100A rated switch is suitable for use on circuits capable of delivering not more than 10,000 RMS symmetrical amperes, 250 VAC maximum, when protected by a 100A maximum circuit breaker (Siemens types QP or BQ) or 150A maximum circuit breaker (Square D Q2, Westinghouse CA-CAH, General Electric TQ2 and Siemens QJ2).

A 200A rated switch is suitable for use on a circuit capable of 22,000 RMS symmetrical amperes, 240 VAC when protected by a circuit breaker without an adjustable short time response or by fuses.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/80e564db1df761a802ab09ddc25686245c519aa13af3d43baf48bf69e6c68d22.jpg)

Figure 2-1. Typical Single-Phase ATS Transfer Mechanism

|     |     |
| --- | --- |
| A | Utility Closing Coil |
| B | Generator Closing Coil |
| C | Utility Lugs (N1 & N2) |
| D | Generator Lugs (E1 &E2) |
| E | Load Lugs (T1 & T2) |

### Utility Service Circuit Breaker (if equipped)

The utility service and generator disconnect circuit breakers for 100 amp models are:

Type BQ, 2-pole

10,000 A/C

• 120/240VAC, 100A

• 50/60 Hertz

. Wire range: #1 - #8 AWG (Cu/Al) The conductor tightening torque is 50 in-lbs. (5.6 Nm).

The utility service circuit breakers for 150/200 amp models are:

• Type 225AF, 2-pole

• 22,000 A/C

• 120/240VAC, 150A/200A 50/60 Hertz Wire range: • Line: 300 MCM - 6 STR (Cu/Al) • Load - ATS: 250 MCM - 6 STR (Cu/Al) The conductor tightening torque is: • Line: 375 in-lbs $( 4 2 . 4 \\mathsf { N m } )$ • Load - ATS: 275 in-lbs. (31 Nm)

The utility service circuit breakers for Siemens 150/200 amp models are:

• Siemens, Type QN, 2-pole

• 10,000 A/C

• 120/240VAC, 150A/200A 50/60 Hertz Wire range: • Line: 300 MCM - 1 STR (Cu/Al) • Load - ATS: 250 MCM - 6 STR (Cu/Al)

The conductor tightening torque is: • Line: 250 in-lbs $( 2 8 . 2 \\mathsf { N m } )$ • Load - ATS: 275 in-lbs. (31 Nm)

### Transfer Switch Data Decal

A data decal is permanently affixed to the transfer switch enclosure. Use this transfer switch only with the specific limits shown on the data decal and on other decals and labels that may be affixed to the switch. This will prevent damage to equipment and property.

When requesting information or ordering parts for this equipment, make sure to include all information from the data decal.

For future reference, record the Model and Serial numbers in the space provided on the front cover of this manual.

### Transfer Switch Enclosure

The standard switch enclosure is a National Electrical Manufacturer’s Association (NEMA) and UL 3R type. UL and NEMA 3R (indoor/outdoor rated) type enclosures primarily provide a degree of protection against falling rain and sleet; are undamaged by the formation of ice on the enclosure.

### Safe Use of Transfer Switch

### WARNING

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/0f8284c64f0c3bb9cc4b0d7ef46e10871ca66521e57b573c09a01c184fc2bbfe.jpg)

Consult Manual. Read and understand manual completely before using product.Failure to completely understand manual and product could result in death or serious injury.

(W000100)

Before installing, operating or servicing this equipment, read the Safety Rules carefully. Comply strictly with all Safety Rules to prevent accidents and/or damage to the equipment. The manufacturer recommends that a copy of the Safety Rules be posted near the transfer switch. Also, be sure to read all instructions and information found on tags, labels and decals affixed to the equipment.

Three publications that outline the safe use of transfer switches are the following:

NFPA 70; National Electrical Code UL 1008; STANDARD FOR SAFETY-AUTOMATIC TRANSFER SWITCHES UL 67; Panelboards Marking and Application Guide

NOTE: It is essential to use the latest version of any standard to ensure correct and current information.

### Load Management Options

Load management systems are designed to work together to prevent a generator from being overloaded by large appliance loads. A Smart A/C Module (SACM) is provided as standard equipment with this switch. An optional Smart Management Module (SMM) is also available.

### Smart A/C Module (SACM)

Up to four air conditioner loads can be managed by the SACM. The SACM manages the loads by “shedding” the connected loads in the event of a drop in generator frequency (overload). Loads to be “shed” are in 4 priority levels on the module.

See Figure 2-2. Priorities A/C 1-4 (A) have connections for an air conditioner. To control an air conditioner, no additional equipment is required. Internal normally closed relays interrupt the 24 VAC thermostat control signal to disable the air conditioner load.

Four LEDs, located on the SACM (B), illuminate when a load is connected and powered.

See Figure 2-2. The SACM has a test button (C) used to simulate an overload condition. This button operates even when the transfer signal is inactive. The Generator Control Wiring is connected to terminals (D).

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/4cc01fc1bceed1907f1b318a42a2e4d894530272a924e2b2ca7fdf6d3d2efd0e.jpg)

Figure 2-2. Smart A/C Module (SACM)

### Smart Management Module (SMM) (sold separately)

Any loads, including central air conditioners, can be managed using a Smart Management Module (SMM). The system can accommodate up to eight individual SMMs.

NOTE: SMMs are self-contained and have individual built-in controllers.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/23fc254e5b05255793ad41dd83cbf2beacc89ee90689da1461bf15290d9ed170.jpg)

Figure 2-3. Smart Management Module (SMM)

### Application Considerations

Generator overload condition is determined by generator frequency. Loads are shed when frequency is less than $5 8 \\mathsf { H z }$ for three seconds or less than $5 0 ~ \\mathsf { H z }$ for $%$ second (for $6 0 ~ \\mathsf { H z }$ systems).

The SACM can be used in conjunction with individual SMMs to manage a combined total of eight loads.

Use Priorities A/C 1-4 on the SACM as the top priorities, then up to four SMMs as Priorities 5-8. Use only select A/C priorities on the SACM as the top priorities, then use additional SMMs as the remaining priorities. A SMM can share a priority with an A/C priority on the SACM provided the generator is sized to handle the combined surge load from both appliances. Sharing priorities can allow up to 12 loads to be managed in a properly sized system.

In any combination of modules, the recovery times after a loss of utility power or shutdown due to overload are shown in Table 2-1 .

Table 2-1. Priority Settings

|     |     |     |     |
| --- | --- | --- | --- |
| Priority | Recovery Time | SACM | SMM |
| 1 | 5 minutes | Yes | Yes |
| 2 | 5 minutes 15seconds | Yes | Yes |
| 3 | 5 minutes 30seconds | Yes | Yes |
| 4 | 5 minutes 45seconds | Yes | Yes |
| 5 | 6 minutes | NA | Yes |
| 6 | 6 minutes 15seconds | NA | Yes |
| 7 | 6 minutes 30seconds | NA | Yes |
| 8 | 6 minutes 45seconds | NA | Yes |

Refer to the SMM Owner’s/Installation Manual for detailed characteristics and specifications of that product.

### Surge Protection Device

### Equipment Description

The Surge Protection Device (SPD) is designed to be installed on service entrance, branch panels, and/or individual equipment disconnects, and functions to protect sensitive electronic equipment from damaging voltage transients. The connecting wires do not carry supply current. Instead, they carry only short-duration currents associated with a transient event.

Contact an IASD for information regarding a particular application or installation not covered in this manual.

### Specifications

|     |     |
| --- | --- |
| Description | Rating |
| Surge Current CapacityPer Phase | 50 kA |
| Nominal DischargeCurrent (In) | 20 kA |
| Short Circuit Current Rating(SCCR) | 200 kA |
| SPD Type | Rated Type 1 or Type 2 |
| System Voltages Available:• Single Split-phase | 120/240 VAC |
| Protection Modes:• Single Split-phase | L-N, L-L |
| Maximum Continuous Oper-ating Voltage (MCOV) | 150 L-N, 300 L-L |
| Input Power Frequency | 50/60 Hz |
| Enclosure Rating | NEMA 4 |
| Operating Temperature | -4°F through 122 °F (-40 Cthrough 70 |
| Operating Humidity | 5% through 95%, non-condensing |
| Operating Altitude | Up to 16,000 ft (5,000m) |
| Agency Certificationand Approvals | ETL per UL1449 4th Edition |
| Listed Device Warranty | 2 Years |

### Warranty

Generac warrants these products to be free from defects in both workmanship and materials for a period of 2 years from the date of delivery to the purchaser. Generac assumes no risk or liability for results of the use of the products purchased from it, including but without limiting the generality of the foregoing: (1) The use in combination with any electrical or electronic components, circuits, systems, assemblies, or any other materials or substances; (2) Unsuitability of any product for use in any circuit or assembly. Purchaser’s rights under the warranty shall consist solely of requiring Generac to repair, or at Generac’s sole discretion, replace, free of charge, F. O. B. factory, and defective items received at said factory within said term determined by Generac to be defective. The giving of or failure to give any advice or recommendations by Generac shall not constitute any warranty by or impose any liability upon Generac. The foregoing constitutes the sole and exclusive liability of Generac AND IS IN LIEU OF ANY AND ALL OTHER WARRANTIES EXPRESSED, IMPLIED OR STATUTORY AS TO THE MERCHANTABILITY, FITNESS FOR PURPOSE SOLD, DESCRIPTION, QUALITY, PRODUCTIVENESS OR ANY OTHER MATTER. In no event shall Generac be liable for special or consequential damages or for delay in performance of the warranty. This warranty does not apply if the product has been misused, abused, altered, tampered with, or used in applications other than specified on the nameplate. At the end of the warranty period, Generac shall be under no further warranty obligation expressed or implied. The product covered by this warranty certificate can only be repaired or replaced by the factory. For help on troubleshooting the SPD, or for warranty information, contact an IASD. Repair or replacement units will be returned collect. If Generac finds the return to be a manufacturer’s defect, the product will be returned prepaid.

### Section 3: Installation

### Introduction to Installation

Though this equipment has been wired and tested at the factory, the installer should verify all wiring connections are proper. Installing the switch includes the following procedures:

Mounting the enclosure.

• Connecting power source and load leads.

• Connecting the generator start and sensing circuit.

• Connecting any auxiliary contact (if needed). Testing functions.

### Mounting

Mounting dimensions for the transfer switch enclosure are in this manual. Enclosures are typically wall-mounted. See Drawings and Diagrams.

### DANGER

Equipment Malfunction. Installing a dirty or damaged transfer switch will cause equipment malfunction and will result in death or serious injury.

(D000119)

This transfer switch is mounted in a UL type 3R enclosure. It can be mounted outside or inside and should be based on the layout of installation, convenience and proximity to the utility supply and load center.

Install the transfer switch as close as possible to the electrical loads that are to be connected to it. Mount the switch vertically to a rigid supporting structure. To prevent switch distortion, level all mounting points. If necessary, use washers behind mounting holes to level the unit.

When installed downstream of metering enclosure, a service rated ATS must be installed as the service equipment to meet the requirements of NEC Section 110.3(B)

### Open Enclosure

1. See Figure 3-1. Remove outer cover (A):

a. Remove thumb screw (B).

b. Slide slot (C) over retention tab.

c. Lower cover until clear of top flange (D), and pull away from enclosure.

2. Remove inner panel (E):

NOTE: Inner Panel only available in models that are Service Entrance Rated.

a. Loosen nut (F) until it clears t-slot (H) in inner panel.

b. Grasp inner panel at two cutouts (G—left and right). Tilt inner panel as shown, passing nut through t-slot.

c. Lower inner panel until clear of two retention slots (J — left and right sides), and pull away from enclosure.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/abf6a94b5bf2e8c22c66e4ef7c07ab6107f11a61f79c4513629f07fc823af830.jpg)

Figure 3-1. Open Enclosure

### Connecting Power Source and Generator Power Supply

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/9a19a9a9ff8244c3beabcfcc0450b886a24118961c0c31519d075eade5089338.jpg)

Electrocution.Turn utility and emergency power supplies to OFF before connecting power source and load lines.Failure to do so will result in death or serious injury.

(D000116)

Installation and interconnection diagrams are provided in this manual.

NOTE: All installations must comply with national, state and local codes. It is the responsibility of the installer to perform an installation that will pass the final electrical inspection.

1. Connect utility supply at the utility service disconnect circuit breaker terminals N1 and N2. Follow torque specifications listed on the circuit breaker.
2. See Figure 3-2. Connect utility neutral and ground to the Upper Neutral and Ground terminals. Neutral and Ground terminals are bonded to each other with a jumper wire (A). NOTE: Neutral to Ground jumper wire (A) is provided for use if required by local codes.
3. Connect generator to the generator terminals (E1 and E2) on the transfer mechanism.
4. Connect the generator neutral wire to the lower neutral lug. IMPORTANT NOTE: A jumper wire (B) bonds the upper and lower Neutral lugs. NEVER remove this wire.
5. Connect a subpanel supply to lower T1 and T2 Terminals. Connect subpanel Neutral and Ground to lower Neutral and Ground bars.

Conductor sizes must be adequate to handle the maximum current to which they will be subjected, based on the $7 5 \\textdegree$ column of tables, charts, etc. used to size conductors. The installation must comply fully with all applicable codes, standards and regulations.

Knockouts into the transfer switch can be made in the field as needed for entry of power cables and conduit. Conduit entry shall maintain the proper wire bending spaces required by Tables 312.6 (A) and (B) in the NEC. Conduits should be arranged to provide separation between the Utility and Generator supply conductors inside the enclosure.

For transfer switches installed in wet locations, power cables or conduits entering above the level of uninsulated live parts shall use fittings listed for use in wet locations as required by 312.2 in the NEC.

NOTE: If aluminum conductors are used, apply corrosion inhibitor to conductors. After tightening terminal lugs, carefully wipe away any excess corrosion inhibitor.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/02ed285caac57fa08ac278974f2234bfcf15ce7ae390d86b1966acbf4d5b3c01.jpg)

Figure 3-2. Wiring Connections

Tighten terminal lugs to the torque values as noted on the decal located on the inside of the door. After tightening terminal lugs, carefully wipe away any excess corrosion inhibitor.

### CAUTION

Equipment damage. Verify all conductors are tightened to the factory specified torque value. Failure to do so could result in damage to the switch base.

(C000120)

### Connecting Start Circuit Wires

Control system interconnections consist of N1, N2, and T1, 00, and leads 23, 0, and 194 (see ).

NOTE: Generac Type TC-ER-JP power and control tray cable can be installed as permitted by the 2017 NEC. Type TC-ER-JP cable contains color-coded power and control conductors.

The generator control wiring is a Class 1 signaling circuit. Reference instruction manual of specific engine generator for wiring connection details. Screw heads are straight bladed and cross-bladed, and should be tightened to 3.5 in-lb $( 0 . 4 \\mathsf { N m } )$ .

Recommended wire gauge sizes depend on wire length as specified in the following chart: Consult factory if you are operating more than one transfer switch and SACM.

|     |     |
| --- | --- |
| Recommen-ded Wire Size | Maximum Wire Length |
| (One transfer switch and load shedmodule) |
| No. 18 AWG | 1-115 ft (0.335 m) |
| No. 16 AWG | 116185 ft (3656 m) |
| No. 14 AWG | 186295 ft (5789 m) |
| No. 12 AWG | 296460 ft (90140 m) |

Exception: Conductors of AC and DC circuits, rated 1000 volts nominal, or less, shall be permitted to occupy the same equipment, cable, or conduit. All conductors shall have an insulation rating equal to at least the maximum circuit voltage applied to any conductor within the equipment, cable, or conduit. See NEC 300.3(C)(1).

### Connecting SACM

See Typical SACM Connections. The SACM can control an air conditioner (24 VAC) directly.

### Control of Air Conditioner Load

1. Route the thermostat cable (from the furnace/thermostat to the outdoor air conditioner unit) to the transfer switch.

2. Connect the wire to the terminal strip terminals (A/ C 1) on the SACM as shown in Typical SACM Connections. These are normally closed contacts which open upon load shed conditions. Route thermostat wire away from high voltage wires.

3. If required, connect additional air conditioners to the terminal strip terminals (A/C 2-4).


NOTE: These instructions are for a typical air conditioner installation. Control of certain heat pumps and 2-stage air conditioners may require special connections or the use of SMMs to control the loads.

|     |     |
| --- | --- |
| Contact Ratings |
| A/C 1-4 | 24 VAC, 1.0 Amp Max |

### Typical SACM Connections

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/6479ed0c61db631b4561740fee5fea6440db008a90c2f3938e78d2fcc25b0e6c.jpg)

### Smart A/C Module (SACM)

Up to four air conditioner loads can be managed by the SACM. The SACM manages the loads by “shedding” the connected loads in the event of a drop in generator frequency (overload). Loads to be “shed” are in 4 priority levels on the module.

See Figure 2-2. Priorities A/C 1-4 (A) have connections for an air conditioner. To control an air conditioner, no additional equipment is required. Internal normally closed relays interrupt the 24 VAC thermostat control signal to disable the air conditioner load.

Four LEDs, located on the SACM (B), illuminate when a load is connected and powered.

See Figure 2-2. The SACM has a test button (C) used to simulate an overload condition. This button operates even when the transfer signal is inactive. The Generator Control Wiring is connected to terminals (D).

### Auxiliary Contact

See Figure 3-3. If desired, there is one normally-closed Auxiliary Contact (A) on the transfer switch to operate customer accessories, remote advisory lights, or remote annunciator devices. A suitable power source must be connected to the common terminal. If needed, an extra auxiliary contact can be added.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/606f4b2f812720f8473673090bdce67239645789f8fea0a8ea3f0bb8b549560f.jpg)

Figure 3-3. Auxiliary Contact

The auxiliary contact is normally closed when the transfer switch is in utility mode. The contacts will open when the transfer switch is in the standby power mode.

NOTE: Auxiliary Contact is rated 10 amps at 125 or 250 volts AC, and 0.6 amps at 125 volts DC.

### CAUTION

Equipment damage. Verify that voltage and current are within specification before energizing this equipment. Exceeding rated voltage and current will damage the auxiliary contacts.

(C000134)

### Fault Current Label

See Figure 3-4. A Fault Current Identification Label is provided in the bag containing the unit Owner’s Manual and transfer switch manual operating handle. The 2017 NEC requires that the short-circuit current rating of the transfer equipment, based on the type of overcurrent protective device protecting the transfer equipment, be field marked on the exterior of the transfer equipment. For NEC compliance, verify the required short-circuit current rating of the transfer switch before installation. The completed label provides the local AHJ (Authority Having Jurisdiction) with the information he or she may require during inspection.

Apply the label to the exterior of the transfer switch enclosure. Use a pen to fill in the required information, and then cover the label with the clear protective decal.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/3e24feddf85b015879496972e3b12b6cd74b49eb506b5c6234d0c1c9442e6b25.jpg)

Figure 3-4. Fault Current Label

### This page intentionally left blank.

### Section 4: Operation

### Functional Tests and Adjustments

Following transfer switch installation and interconnection, inspect the entire installation carefully. A competent, qualified electrician should inspect it. The installation should comply strictly with all applicable codes, standards, and regulations. When absolutely certain the installation is proper and correct, complete a functional test of the system.

### CAUTION

Equipment damage. Perform functional tests in the exact order they are presented in the manual. Failure to do so could result in equipment damage.

(C000121)

IMPORTANT NOTE: Before proceeding with functional tests, read and make sure all instructions and information in this section is understood. Also read the information and instructions of labels and decals affixed to the switch. Note any options or accessories that might be installed and review their operation.

### Manual Operation

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/d2d77e987d1728a749246fc810b08e7c0d686e0155d573e958a73d3eb3144c79.jpg)

Electrocution.Do not manually transfer under load. Disconnect transfer switch from all power sources prior to manual transfer. Failure to do so will result in death or serious injury, and equipment damage.

(D000132)

See Figure 4-1. A manual handle (B) is shipped with the transfer switch manual. Manual operation must be checked BEFORE the transfer switch is operated electrically. To check manual operation, proceed as follows:

1. Verify the generator is in the OFF mode.
2. Turn OFF both utility (service disconnect circuit breaker) and emergency (generator main line circuit breaker) power supplies to the transfer switch.
3. Note position of transfer mechanism main contacts (A) by observing the movable contact carrier arm. This can be viewed through the long narrow slot in the inside cover. The top of the movable contact carrier arm is yellow to be easily identified. a. Manual operation handle in the UP position - LOAD terminals (T1, T2) are connected to utility terminals (N1, N2). b. Manual operation handle in the DOWN position - LOAD terminals (T1, T2) are connected to EMERGENCY terminals (E1, E2).

### CAUTION

Equipment damage. Do not use excessive force while manually operating the transfer switch. Doing so could result in equipment damage.

(C000122)

### Close to Utility Source Side

Before proceeding, verify the position of the switch by observing the position of manual operation handle in . If the handle is UP, the contacts are closed in the utility (normal) position, no further action is required. If the handle is DOWN, proceed with Step 1.

1. With the handle inserted into the movable contact carrier arm, move handle UP. Be sure to hold on to the handle as it will move quickly after the center of travel.
2. Remove manual operating handle from movable contact carrier arm. Return handle to storage bracket.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/4393294f4354d47aef3d89ee30a48a691dbe2df638fecb90c44699206ee13773.jpg)

Figure 4-1. Manual Operation

### Close to Generator Source Side

Before proceeding, verify the position of the switch by observing the position of the manual operation handle in . If the handle is DOWN, the contacts are closed in the

generator (standby) position. No further action is required. If the handle is UP, proceed with Step 1.

1. With the handle inserted into the movable contact carrier arm, move the handle DOWN. Be sure to hold on to the handle as it will move quickly after the center of travel.
2. Remove manual operating handle from movable contact carrier arm. Return handle to storage bracket.

### Return to Utility Source Side

1. Manually actuate switch to return manual operating handle to the UP position.
2. Remove manual operating handle from movable contact carrier arm. Return handle to storage bracket.

### Voltage Checks

NOTE: Use the Digital Multimeter (DMM) LowZ low input impedance setting to collect accurate voltage measurements. LowZ eliminates the possibility of inaccurate ghost voltage readings, also known as phantom voltage or stray voltage readings. See DMM manufacturer’s literature for additional information.

### Utility Voltage Checks

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/eb2b67c4c085996072e8a19e9322f227340c799fc26a9ef08c9c179ce48ec836.jpg)

Electrocution.High voltage is present at transfer switch and terminals.Contact with live terminals will result in death or serious injury.

(D000129)

1. Turn ON the utility power supply to the transfer switch using the utility service disconnect circuit breaker.
2. With an accurate AC voltmeter, check for correct voltage. Measure across ATS terminal lugs N1 and N2; N1 to NEUTRAL and N2 to NEUTRAL.

### Generator Voltage Checks

### DANGER

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/a7fd6580b19adbb21226aa87c8a559666511c69200f9c1c6f80a2463a11f388e.jpg)

Electrocution.High voltage is present at transfer switch and terminals.Contact with live terminals will result in death or serious injury.

(D000129)

1. On the generator panel, select the MANUAL mode of operation. The generator should crank and start.

2. Let the generator stabilize and warm up at no-load for at least five minutes.

3. Set the generator's main circuit breaker (CB1) to its ON or CLOSED position.

4. With an accurate AC voltmeter and frequency meter, check the no-load, voltage and frequency. Measure across ATS terminal lugs E1 to E2; E1 to NEUTRAL and E2 to NEUTRAL.


|     |     |
| --- | --- |
| Frequency | 60-62 Hz |
| Terminals E1 to E2 | 240-246 VAC |
| Terminals E1 toNEUTRAL | 120-123 VAC |
| Terminals E2 toNEUTRAL | 120-123 VAC |

5. When certain that generator supply voltage is correct and compatible with transfer switch ratings, turn OFF the generator supply to the transfer switch.

6. Set the generator main circuit breaker (CB1) to OFF or OPEN.

7. On the generator panel, select the OFF mode to shut down the generator.


Do NOT proceed until generator AC output voltage and frequency are correct and within stated limits. If the no-load voltage is correct but no-load frequency is incorrect, the engine governed speed may require adjustment. If no-load frequency is correct but voltage is not, the voltage regulator may require adjustment.

### Generator Tests Under Load

1. Set the generator main circuit breaker to OFF or OPEN.

2. Set the utility service disconnect circuit breaker of the transfer switch to OFF or OPEN, and turn OFF or OPEN all load circuit breakers.

3. Manually actuate the transfer switch main contacts to the emergency (standby) position. See .

4. To start the generator, select the MANUAL mode of operation. When engine starts, let it stabilize for a few minutes, and close lid (if applicable).

5. Set the generator main circuit breaker to ON or CLOSED. The generator now powers all LOAD circuits. Check generator operation under load as follows:

   a. Turn on electrical loads to the full rated wattage/amperage capacity of the generator. DO NOT OVERLOAD.

   b. With maximum rated load applied, check voltage and frequency across transfer switch terminals E1 and E2. Voltage should be greater than 230 VAC (240 VAC system); frequency should be greater than $5 9 \\mathsf { H z }$ .

   c. Verify that the gas pressure remains within acceptable parameters (see the generator Installation manual).

   d. Let the generator run under rated load for at least 30 minutes. With unit running, watch for unusual noises, vibration, or overheating that might indicate a problem.

6. When checkout under load is complete, set main circuit breaker of the generator to the OFF or OPEN position.

7. Let the generator run at no-load for several minutes. Then, shut down by selecting the OFF mode.

8. Move the main switch contacts back to the utility position.


NOTE: See . Handle and operating lever of transfer switch should be in down position.

9\. Set the utility service disconnect circuit breaker of the transfer switch to ON or CLOSED.

10\. The system is now set for fully automatic operation.

### Checking Automatic Operation

To check the system for proper automatic operation, proceed as follows:

1. Verify generator is OFF.
2. Set the utility service disconnect circuit breaker of the transfer switch to OFF or OPEN.
3. Verify switch is de-energized.
4. Install front cover of the transfer switch.
5. Set the utility service disconnect circuit breaker of the transfer switch to ON or CLOSED.
6. Set the generator main circuit breaker to ON.
7. On the generator panel, select AUTO. The system is now ready for automatic operation.
8. Set the utility service disconnect circuit breaker of the transfer switch to OFF or OPEN.

With the generator ready for automatic operation, the engine should crank and start when the utility source power is turned OFF after a five second delay (factory default setting). After starting, the transfer switch should connect load circuits to the standby side after a five (5) second warm-up delay. Let the system operate through its entire automatic sequence of operation.

NOTE: Timer durations may differ between generators and settings.

With the generator running and loads powered by generator AC output, set the utility service disconnect circuit breaker of the transfer switch to ON or CLOSED. The following should occur:

After approximately 15 seconds, the switch should transfer loads back to the utility power source. Approximately one minute after re-transfer, the generator should shut down.

With the generator in the AUTOMATIC mode, the system is now set for fully automatic operation.

### Surge Protection Device Operation

1. Apply system power. LED should illuminate.

NOTE: If connected LED does not illuminate, remove power, check connections, and test again. If LED still does not light, contact an IASD.

2. SPD will automatically begin to protect downstream electrical devices from damaging voltage transients.

With all phase voltages present, LED indicator reports the status of the protection elements and is active when all of them are intact and providing protection. Any loss of protection is signaled when LED turns OFF.

Unit is not repairable and contains no user serviceable parts. If unit fails, as evidenced by LED turning OFF, contact an IASD for a replacement.

IMPORTANT NOTE: Do not use the Suppression Circuit Status LEDs as an indication of the presence or absence of system phase voltages.

### Installation Summary

1. Verify the installation has been properly performed as outlined by the manufacturer and that it meets all applicable laws and codes.
2. Verify proper operation of the system as outlined in the appropriate installation and owner’s manuals.
3. Educate the end-user on the proper operation, maintenance and service call procedures.

NOTE: The Utility Power Circuit Breaker in the transfer switch must be turned OFF to simulate a utility outage. Shutting off the main disconnect in a subpanel connected to the transfer switch will NOT simulate an outage.

### Shutting Generator Down While Under Load or During a Utility Outage

### DANGER

Automatic start-up. Disconnect utility power and render unit inoperable before working on unit. Failure to do so will result in death or serious injury.

(D000191)

IMPORTANT NOTE: To avoid equipment damage, follow these steps, in order, during utility outages. Shutdowns may be required during utility outages to perform routine maintenance or to conserve fuel.

1. To turn generator OFF:

a. Set utility MLCB to OFF (OPEN).

b. Set generator MLCB (generator disconnect) to OFF (OPEN).

c. Allow generator to run for cool-down for approximately one minute.

d. Set generator to OFF at the controller.

e. Remove 7.5A fuse from controller.

2. To turn generator back ON:

a. Install 7.5A fuse in controller.

b. Verify generator MLCB (generator disconnect) is OFF (OPEN).

c. Set generator to AUTO mode at the controller.

d. Generator will start and run. Allow generator to run and warm up for a few minutes.

e. Set generator MLCB (generator disconnect) to ON (CLOSED).

f. Set utility MLCB to ON (CLOSED).

The system now operates in automatic mode.

### Preparing for Maintenance

### DANGER

Automatic start-up. Disconnect utility power and render unit inoperable before working on unit. Failure to do so will result in death or serious injury.

(D000191)

1. To turn the generator OFF:

a. At the controller, turn the generator OFF.

b. Set the MLCB (generator disconnect) on the generator to OFF (OPEN).

c. Turn the main utility disconnect OFF (OPEN).

d. Remove 7.5A fuse from the controller.

e. Follow maintenance procedure(s).

2. To turn the generator back ON:

a. Turn the main utility disconnect ON (CLOSED).

b. Install 7.5A fuse in controller.

c. Put the generator into AUTO mode.

d. Set the MLCB (generator disconnect) on the generator to ON (CLOSED).

The system is now in automatic mode.

### Testing the SACM

A “Test” pushbutton is provided on top of the SACM to test the operation of the load shed functions. The test pushbutton will work when the ATS is in the utility or the generator position.

1. Turn on the utility supply to the ATS.
2. Verify managed loads are powered and all LEDs illuminate on SACM.
3. Press the TEST button on the SACM.
4. Verify that all of the connected loads to be “shed” become disabled.
5. After five (5) minutes verify A/C 1 is energized and Status LED A/C 1 is ON.
6. After another 15 seconds, verify A/C 2 is energized and Status LED A/C 2 is ON.
7. After another 15 seconds, verify Load A/C 3 is energized and Status LED Load A/C 3 is ON.
8. After another 15 seconds, verify A/C 4 is energized and Status LED A/C 4 is ON.

### SACM Fuse Service

See Figure 4-2. A fuse removal and installation tool (A) is included in the SACM housing.

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/21ae90a26a4261d84f30dc7c2248b4137e914f24ea4b7eac3cd2eddc4028e444.jpg)

Figure 4-2. Fuse Removal and Installation Tool

If a fuse requires replacement, snap the tool free with an appropriate tool such as diagonal pliers, and use it to replace the fuse. The tool can be stored in the SACM housing retainer directly above the fuses, with the large thumb tab facing out.

Use only Generac replacement fuses — part number 10000005117, rated 240 VAC, 6.3 Amps, 10,000 AIC.

Alternative fuses are Littelfuse® 021606.3MXP or Optifuse® FCD-6.3.

### Testing The SMM

Refer to the SMM Owner’s or Installation Manual for testing procedure.

### Section 5: Drawings and Diagrams

### Installation Drawing—100A SE & Non-SE/150-200A Non-SE

No. 0G6832-A

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/82f99d8bb1db8282f7437145a6919e0228ed4d7d83e4257f62c4fc44ff5b1bc5.jpg)

### Installation Drawing—150/200A SE

No.10000012171-A

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/87fe587a4abde2fdda9f5aa711bdbef5c2dee6ded646f804256d52aa06658b36.jpg)

### Installation Drawing—Liquid Cooled Generator

No. A0004899842–A (Part 1 of 2)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/7bb342091b39a87a9ad82392a66ed98b5bee3fd8012725807a4bf7c83421989e.jpg)

### Installation Drawing—Liquid-Cooled Generator

No. A0004899842–A (Part 2 of 2)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/1a1c7f25ee22e3356f52f91691060b22dbe6705c5c28a149a5c18945caac7c6d.jpg)

### Installation Drawing—Air-Cooled Generator SE and Non-SE Rated ATS

A0004899843-A (Part 1 of 2)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/913ea1fec78e21cb2cb972423979558a90a244951c9a8db057c30dfdc6854053.jpg)

### Installation Drawing—Air-Cooled Generator SE and Non-SE Rated ATS

A0004899843-A (Part 2 of 2)

![](https://www.generac.com/globalassets/products/residential/standby-generator-transfer-switches/automatic-transfer-switches/owners-manual/images/92c4f1ec4642515466a1203296a82cd941bbb1e473a87b874835423d515e5e10.jpg)

### This page intentionally left blank.

Generac Power Systems, Inc. S45 W29290 Hwy . 59 Waukesha, WI 53189 1–888–GENERAC (1–888–436–3722) [www.generac.com](http://www.generac.com/)

---

## Wiring our Generac generator transfer switch to the meter can

**Source:** https://www.youtube.com/watch?v=f_VMf14UbFw

Error 403 (Forbidden)!!1

**403.** That’s an error.

We're sorry, but you do not have access to this page. That’s all we know.

Back


[![](https://www.youtube.com/watch?v=f_VMf14UbFw)](https://www.youtube.com/ "YouTube Home")

Skip navigation

Search


Search with your voice

[Sign in](https://accounts.google.com/ServiceLogin?service=youtube&uilel=3&passive=true&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Den%26next%3Dhttps%253A%252F%252Fwww.youtube.com%252Fwatch%253Fv%253Df_VMf14UbFw&hl=en&ec=65620)

Wiring our Generac generator transfer switch to the meter can

Tap to unmute

2x

#### Wiring our Generac generator transfer switch to the meter can

Maynard Family Homestead 893,260 views 4 years ago

Search

Copy link

Info

Shopping

![](https://i.ytimg.com/an/JKOaCljQxrF0llYwARamYA/featured_channel.jpg?v=5fcd86c9)

If playback doesn't begin shortly, try restarting your device.

•

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

CancelConfirm

Up next

Live

Upcoming

CancelPlay Now

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

0:00

[Next (SHIFT+n)](https://www.youtube.com/watch?v=IWST5Vih8Nc "Next (SHIFT+n)")

0:00 / 21:54

Live

•Watch full video

•

•

[19:32\\
Servicing and transfer testing a 24kw Generac standby generatorMaynard Family Homestead79K views • 2 years agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=IWST5Vih8Nc) [20:45\\
A Generac Standby Generator Starts With.....Electrician Ron 26K views • 9 months agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=e-fPyMPteJ8) [26:42\\
Installing our new 24kw Generac generator with electrical wiring.Maynard Family Homestead1M views • 4 years agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=_IDluE3fEoc) [26:40\\
This GENERAC INSTALL Was More Work Than I Realized.....Spicer Designs236K views • 11 months agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=A7Fl6trDeMs) [25:53\\
What Should You Know Before Installing a Generator? Whole Home or Critical Loads?Electrician U96K views • 1 year agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=cNJfWmUpwyI) [33:55\\
Installing A 10 Circuit Transfer Switch: Reliance Controls Model Number 310CRKSam's Doin Stuff95K views • 2 years agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=LRwDcdBWsLg) [57:51\\
Unlocking the Basics: How to Install a SubpanelSmarter Sparky39K views • 3 weeks agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=ZX9lUj199B4) [27:54\\
Whole Home Generators Are Expensive. Do This Instead!HAXMAN3M views • 6 months agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=mlCcvozgYfE) [45:18\\
Generac 200A ATS Install w/ Grounding, Bonding, and Area Preparation for 26 kilowatt GeneratorElectrician Ron 10K views • 7 months agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=dNouI-OIUro) [12:32\\
24kW Generac Full Installation: From Electrical to Gas PipingGenerac Doctor 33K views • 1 year agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=-nwZtRqmKXg) [12:22\\
Whole House Power Backup Solution \| Generator Inlet Box InstallEveryday Home Repairs1.3M views • 3 years agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=RmYwIt0RHnI) [22:26\\
Generac Generator Installation Part 1 \| Clark, NJElectrician Ron 101K views • 3 years agoLivePlaylist ()Mix (50+)](https://www.youtube.com/watch?v=MEWivYg8-Ok)

### Wiring our Generac generator transfer switch to the meter can

[![](https://yt3.ggpht.com/E4yPpHyxazmU2SVcYMwnVyu8JX0lTwdlUlksE70nN76a_iAK2g98zlLrXsm2_1OdH18oU9lrZxQ=s48-c-k-c0x00ffffff-no-rj)](https://www.youtube.com/@MaynardFamilyHomestead)

[Maynard Family Homestead](https://www.youtube.com/@MaynardFamilyHomestead)


Maynard Family Homestead


19.6K subscribers

Subscribe

Subscribed

15K

Share

Save

Download

Download

893K views4 years ago

893,260 views • Oct 15, 2021

This video Is not a tutorial, and I highly recommend having a trained electrician install your transfer switch for you. I am a qualified electrician, that’s why I did my own installation. However, serious injury or death can occur if you don’t know what you’re doing ￼…...more

...more

How this was made

Auto-dubbed

Audio tracks for some languages were automatically generated. [Learn more](https://support.google.com/youtube/answer/15569972?hl=en)

Follow along using the transcript.

Show transcript

[Videos](https://www.youtube.com/channel/UCJKOaCljQxrF0llYwARamYA/videos)[About](https://www.youtube.com/channel/UCJKOaCljQxrF0llYwARamYA/about)[Facebook page](https://www.youtube.com/redirect?event=Watch_SD_EP&redir_token=QUFFLUhqbWxVNDJtTFdHRVVxbHV5U3NHN3MzaWw2bUdzQXxBQ3Jtc0tseHhYR3Q0aFlqeGNNaGpvT3BmOFZzRk14ajI3WGJXRldrd0dnUjNVdDZ1TlBVeFVqZ2ZnUFVfQ1ZEUHVhZ0kwaTQxWEpnNWtuRzFXeXFLa2wzNVphSlNDb1NEajVFMzZlVVBOcEdFeE1nMHJkRjBITQ&q=https%3A%2F%2Fwww.facebook.com%2FMaynardFamilyFarm)[Instagram page](https://www.youtube.com/redirect?event=Watch_SD_EP&redir_token=QUFFLUhqbk9iYWN4VnVLVlMxSk5KMFZPWU1pU0l6anVFUXxBQ3Jtc0ttVHN6S0dPQjlQTEFIUzFzNE12VXRlS3JCVkJ2TVQzdTNTcjZuRE9WVHFlcXpmNDMxUXZzd2FfUzBudDhtS21MZEdBaUt0R0tnOFBTYzJyaXRGS1BqajBvczR3SjdHY3FpbGVsYm13RVcxaFNIUzBVcw&q=https%3A%2F%2Fwww.instagram.com%2Fmaynardfamilyhomestead%2F)

Show less

### Wiring our Generac generator transfer switch to the meter can

893,260 views893K views

Oct 15, 2021

15K

Share

Save

Download

Download

Wiring our Generac generator transfer switch to the meter can

15KLikes

893,260Views

2021Oct 15

This video Is not a tutorial, and I highly recommend having a trained electrician install your transfer switch for you. I am a qualified electrician, that’s why I did my own installation. However, serious injury or death can occur if you don’t know what you’re doing ￼…...more

...more
Show less

How this was made

Auto-dubbed

Audio tracks for some languages were automatically generated. [Learn more](https://support.google.com/youtube/answer/15569972?hl=en)

Follow along using the transcript.

Show transcript

[Videos](https://www.youtube.com/channel/UCJKOaCljQxrF0llYwARamYA/videos)[About](https://www.youtube.com/channel/UCJKOaCljQxrF0llYwARamYA/about)[Facebook page](https://www.youtube.com/redirect?event=Watch_SD_EP&redir_token=QUFFLUhqbWxVNDJtTFdHRVVxbHV5U3NHN3MzaWw2bUdzQXxBQ3Jtc0tseHhYR3Q0aFlqeGNNaGpvT3BmOFZzRk14ajI3WGJXRldrd0dnUjNVdDZ1TlBVeFVqZ2ZnUFVfQ1ZEUHVhZ0kwaTQxWEpnNWtuRzFXeXFLa2wzNVphSlNDb1NEajVFMzZlVVBOcEdFeE1nMHJkRjBITQ&q=https%3A%2F%2Fwww.facebook.com%2FMaynardFamilyFarm)[Instagram page](https://www.youtube.com/redirect?event=Watch_SD_EP&redir_token=QUFFLUhqbk9iYWN4VnVLVlMxSk5KMFZPWU1pU0l6anVFUXxBQ3Jtc0ttVHN6S0dPQjlQTEFIUzFzNE12VXRlS3JCVkJ2TVQzdTNTcjZuRE9WVHFlcXpmNDMxUXZzd2FfUzBudDhtS21MZEdBaUt0R0tnOFBTYzJyaXRGS1BqajBvczR3SjdHY3FpbGVsYm13RVcxaFNIUzBVcw&q=https%3A%2F%2Fwww.instagram.com%2Fmaynardfamilyhomestead%2F)

0:01


good morning friends it is a very foggy

0:04


morning here on the manor family

0:06


homestead

0:07


but it's been an exciting day it's

0:09


friday morning

0:11


and uh got permission from my boss to

0:13


come in late and we're gonna get this

0:15


transfer switch uh hooked up to the

0:17


meter cam so

0:19


i contacted the power company yesterday

0:21


got the uh cut loose lined up

0:24


they're on their way now he'll be here

0:25


in about 15 minutes

0:28


and then i've got the inspector lined up

0:29


he's gonna come look at it as soon as

0:31


i'm uh done which hopefully should only

0:33


take me about 45 minutes but

0:36


we'll see um

0:38


so yeah it's gonna be an exciting day

0:40


we're gonna get this wired up and i'll

0:42


uh

0:43


i'll put the camera up on a tripod that

0:44


way uh y'all can see how it's done so

0:47


thank you so much for joining us

1:01


\[Music\]

1:14


\[Music\]

1:17


are you ready to have it dead

1:19


ready is it gonna be okay

1:30


glad you were ready some people are

1:31


still asleep oh really

1:33


i'm gonna go uh top side i'm gonna go

1:36


pull the jack okay

2:18


oh

2:27


okay

2:48


um

3:14


this

3:33


come on baby

3:53


so

4:10


this way

4:18


uh

4:36


there we go

4:41


okay

5:00


so

5:12


meter can is done

5:56


am i gonna like

6:26


so

7:24


hmm

7:41


one down one to go

8:03


so

8:33


all right

8:42


um

8:54


anything smaller than two and a half

8:56


inch is not gonna work for all these

8:57


wires

8:58


\[Laughter\]

9:03


but we got them

9:07


i had to stop for a second and admire

9:09


that sunrise

9:11


it is beautiful with all that fog

9:21


okay so right down here is where

9:24


the uh the upper terminals you have

9:26


upper terminals and lower terminals

9:28


upper terminals are

9:29


the generator source so these are the

9:31


wires going

9:33


coming here from the generator

9:35


i'm going to actually move those out of

9:36


my way for right now because

9:39


i can't access these

9:41


lugs back here so the customer load

9:43


it'll show right here is is right here

9:45


that's the lower connections

9:47


so that's where i'm going to hook my

9:49


feeders to my panel

10:46


um

11:07


so

11:23


uh

11:38


all right

11:43


now we'll hook our generator wires back

11:45


up

12:08


come on

12:14


there we go

12:22


transfer switch is done

12:44


awesome

13:11


so this is no longer going to be my

13:13


first means of disconnect

13:14


um totally slipped my mind

13:17


this is no longer my first means of

13:18


disconnect

13:19


this is so grounds and neutrals are

13:21


going to be bonded together here

13:23


over here they've got to be separated

13:24


now um where i had them before

13:28


they were together

13:30


um

13:32


i've got to separate them so

13:35


i'm gonna have to take

13:36


the ground off of here

13:38


i'm gonna have to get a ground bar

13:41


probably put it across down here maybe

13:43


um and put on my grounds on that

14:32


uh

14:49


uh

15:11


ugh

15:36


ouch

15:38


all right

16:02


so

16:16


we got her done

16:18


took me a little over an hour actually

16:21


i had to run and grab a ground bar

16:23


because i totally forgot to get one

16:25


before so this is how it works so we've

16:28


got our power lines coming in from the

16:29


power company from the transformer

16:32


they come over here these

16:34


prongs for the meter

16:37


transfers over to here through the meter

16:39


we've got our two hots and our neutral

16:43


those come all the way over

16:46


over here to where

16:48


it says

16:49


utility source connections

16:52


those are our two hots there's our

16:54


neutral okay

16:56


so that's our line

16:57


it's our breaker

16:59


that comes down so then down here we've

17:01


got

17:03


our lower connection

17:04


is our customer load which it says on

17:06


that sticker which is our panel and the

17:09


uh upper terminals here are the

17:10


generator okay so those go to the

17:12


generator they come down

17:14


go over here to the generator

17:16


that's what feeds the generator feeds it

17:18


back into here

17:20


this plunger switches

17:22


what switches the power back and forth

17:24


from

17:25


the generator to the utility

17:28


so then our wires come out are two hots

17:31


and our white neutral here

17:33


and our ground

17:34


they're bonded here because this is the

17:35


first means of disconnect from the meter

17:38


they'll be separated from here on out

17:40


they come over

17:43


feed into the top of the panel with the

17:45


main breaker here

17:47


of course the neutral and then we

17:48


separated which i've got to take the

17:50


screw out real quick i just see that um

17:53


we're separating our neutrals and

17:54


grounds here which is why i had to add

17:56


the ground bar

17:57


to separate everything here okay

18:00


it's actually super simple

18:03


um this is definitely not a pretty

18:05


setup i really like to have my wires

18:07


nice and neat but

18:10


it's existing and this is what i kind of

18:11


had to work with in a very short time

18:13


crunch so trying to get the power back

18:15


on

18:17


for the kiddos

18:18


and mama

18:20


so the inspector will be here in just a

18:22


few minutes and he'll inspect it and

18:23


hopefully we'll get it turned back on

18:25


shortly

18:36


foreign

18:48


okay

19:02


\[Music\]

19:33


we're good to go ready for the power

19:35


company to come hook us up

20:17


bolts

20:29


all right staying clear

20:45


all right stand clear

20:49


all right

20:54


we have power

21:08


awesome

21:18


hey thank you sir man y'all have a good

21:20


one you too

21:21


well that's wraps it up we got our power

21:23


turned back on took a little longer than

21:25


um the plan was

21:27


to get it only have power out for about

21:29


an hour and a half but we ended up

21:32


was about three hours right at three

21:33


hours but

21:35


nonetheless it worked out good they came

21:37


earlier than i was expecting so it

21:39


worked out good it's still

21:41


cool enough it's

21:42


wasn't a problem so

21:44


hopefully this is uh helpful to somebody

21:46


out there and uh if it is please leave

21:49


us a like on the video and we'll see you

21:51


on the next one thanks for joining us

No results found

TAP TO RETRY

[![](https://i.ytimg.com/vi/IWST5Vih8Nc/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCo65JqmVRdEToNPGK8vpG0H5NlaA)\\
\\
19:32](https://www.youtube.com/watch?v=IWST5Vih8Nc)

### [Servicing and transfer testing a 24kw Generac standby generator](https://www.youtube.com/watch?v=IWST5Vih8Nc)

Maynard Family Homestead

79K views • 2 years ago

[![](https://i.ytimg.com/vi/e-fPyMPteJ8/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAidyt2v23_sn_9ngcQdFpVSN6DOA)\\
\\
20:45](https://www.youtube.com/watch?v=e-fPyMPteJ8&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

### [A Generac Standby Generator Starts With.....](https://www.youtube.com/watch?v=e-fPyMPteJ8&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

Electrician Ron

26K views • 9 months ago

[![](https://i.ytimg.com/vi/_IDluE3fEoc/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAm-PowCZm_7x3tz1wMtXXze-habQ)\\
\\
26:42](https://www.youtube.com/watch?v=_IDluE3fEoc&pp=ugUEEgJlbg%3D%3D)

### [Installing our new 24kw Generac generator with electrical wiring.](https://www.youtube.com/watch?v=_IDluE3fEoc&pp=ugUEEgJlbg%3D%3D)

Maynard Family Homestead

1M views • 4 years ago

[![](https://i.ytimg.com/vi/A7Fl6trDeMs/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLC_R7O6xZSFVMVW8RQquDt_nbUX9Q)\\
\\
26:40](https://www.youtube.com/watch?v=A7Fl6trDeMs&pp=ugUHEgVlbi1VUw%3D%3D)

### [This GENERAC INSTALL Was More Work Than I Realized.....](https://www.youtube.com/watch?v=A7Fl6trDeMs&pp=ugUHEgVlbi1VUw%3D%3D)

Spicer Designs

236K views • 11 months ago

[![](https://i.ytimg.com/vi/cNJfWmUpwyI/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCmkmOmaEHHSDC6TJMXtnotCgC_Lg)\\
\\
25:53](https://www.youtube.com/watch?v=cNJfWmUpwyI&pp=ugUEEgJlbg%3D%3D)

### [What Should You Know Before Installing a Generator? Whole Home or Critical Loads?](https://www.youtube.com/watch?v=cNJfWmUpwyI&pp=ugUEEgJlbg%3D%3D)

Electrician U

96K views • 1 year ago

[![](https://i.ytimg.com/vi/LRwDcdBWsLg/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBmGkfcBw7jaw2SlGZWq71Gi_2pUA)\\
\\
33:55](https://www.youtube.com/watch?v=LRwDcdBWsLg&pp=ugUEEgJlbg%3D%3D)

### [Installing A 10 Circuit Transfer Switch: Reliance Controls Model Number 310CRK](https://www.youtube.com/watch?v=LRwDcdBWsLg&pp=ugUEEgJlbg%3D%3D)

Sam's Doin Stuff

95K views • 2 years ago

[![](https://i.ytimg.com/vi/ZX9lUj199B4/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAX3u_lzL3xdD_hVSrwHR5uQ-khiQ)\\
\\
57:51](https://www.youtube.com/watch?v=ZX9lUj199B4)

### [Unlocking the Basics: How to Install a Subpanel](https://www.youtube.com/watch?v=ZX9lUj199B4)

Smarter Sparky

39K views • 3 weeks ago

[![](https://i.ytimg.com/vi/mlCcvozgYfE/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCMV7BM0mx4UHpAbahuD-zHvXZW_Q)\\
\\
27:54](https://www.youtube.com/watch?v=mlCcvozgYfE)

### [Whole Home Generators Are Expensive. Do This Instead!](https://www.youtube.com/watch?v=mlCcvozgYfE)

HAXMAN

3M views • 6 months ago

[![](https://i.ytimg.com/vi/dNouI-OIUro/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAY5eb03hkFxKZKfkFKpUJLY_QQJw)\\
\\
45:18](https://www.youtube.com/watch?v=dNouI-OIUro&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

### [Generac 200A ATS Install w/ Grounding, Bonding, and Area Preparation for 26 kilowatt Generator](https://www.youtube.com/watch?v=dNouI-OIUro&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

Electrician Ron

10K views • 7 months ago

[![](https://i.ytimg.com/vi/-nwZtRqmKXg/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBsop4RSdWw_MM3mxJ7oDxU1f-vQg)\\
\\
12:32](https://www.youtube.com/watch?v=-nwZtRqmKXg)

### [24kW Generac Full Installation: From Electrical to Gas Piping](https://www.youtube.com/watch?v=-nwZtRqmKXg)

Generac Doctor

33K views • 1 year ago

[![](https://i.ytimg.com/vi/RmYwIt0RHnI/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDB-zywXqgMZmwA0_5Gnjx1g0lZMQ)\\
\\
12:22](https://www.youtube.com/watch?v=RmYwIt0RHnI)

### [Whole House Power Backup Solution \| Generator Inlet Box Install](https://www.youtube.com/watch?v=RmYwIt0RHnI)

Everyday Home Repairs

1.3M views • 3 years ago

[![](https://i.ytimg.com/vi/MEWivYg8-Ok/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAILbPgcCU-Z-ogDzFLWREgwVYN3g)\\
\\
22:26](https://www.youtube.com/watch?v=MEWivYg8-Ok)

### [Generac Generator Installation Part 1 \| Clark, NJ](https://www.youtube.com/watch?v=MEWivYg8-Ok)

Electrician Ron

101K views • 3 years ago

[![](https://i.ytimg.com/vi/_OJlFwxtBXE/hqdefault.jpg?sqp=-oaymwFACKgBEF5IWvKriqkDMwgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAHwAQH4Af4JgALQBYoCDAgAEAEYZSBZKE8wDw==&rs=AOn4CLDpHaXnhaR1HBFPdk_AUWswuQFSCQ)\\
\\
38:45](https://www.youtube.com/watch?v=_OJlFwxtBXE)

### [Installing a Whole House Generator (Kohler 20kW)](https://www.youtube.com/watch?v=_OJlFwxtBXE)

Turkey Lake Public Works

246K views • 1 year ago

[![](https://i.ytimg.com/vi/h7X5kINCAHU/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDv_WO6u-_LJJfODjDx65nkIEIXyA)\\
\\
32:20](https://www.youtube.com/watch?v=h7X5kINCAHU&pp=ugUEEgJlbg%3D%3D)

### [200 Amp Electrical Service Upgrade w/ new Generac Automatic Transfer Switch and built-in surge](https://www.youtube.com/watch?v=h7X5kINCAHU&pp=ugUEEgJlbg%3D%3D)

Electrician Ron

41K views • 4 weeks ago

[![](https://i.ytimg.com/vi/MHAiAg_97XI/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBm6L5_3TTIgAODYbFEREujuZ-45Q)\\
\\
53:47](https://www.youtube.com/watch?v=MHAiAg_97XI&pp=ugUEEgJlbg%3D%3D)

### [Emergency Standby Generator Install, DIY Start to Finish. Generac 24kW Backup Generator.](https://www.youtube.com/watch?v=MHAiAg_97XI&pp=ugUEEgJlbg%3D%3D)

FarmCraft101

935K views • 3 years ago

[![](https://i.ytimg.com/vi/kc2a6HUAZh0/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDYo7S3qzhTCpYmVD6WxVk0qY-4-A)\\
\\
13:08](https://www.youtube.com/watch?v=kc2a6HUAZh0&pp=ugUEEgJlbg%3D%3D)

### [Testing our new Generac generator and transfer switch.](https://www.youtube.com/watch?v=kc2a6HUAZh0&pp=ugUEEgJlbg%3D%3D)

Maynard Family Homestead

168K views • 4 years ago

[![](https://i.ytimg.com/vi/9OJI1mkySdA/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDsDszpxnuagOY26-1qr25Luj88kw)\\
\\
32:22](https://www.youtube.com/watch?v=9OJI1mkySdA)

### [STEP by STEP Installation Of Auto Home Back-Up System \| Anker SOLIX F3800](https://www.youtube.com/watch?v=9OJI1mkySdA)

Spicer Designs

200K views • 2 years ago

[![](https://i.ytimg.com/vi/t1N6UjEF83Y/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLB_i2NrD4Z-pnHukLm4Pi_3u6JVfg)\\
\\
12:57](https://www.youtube.com/watch?v=t1N6UjEF83Y)

### [Problems with our Generac generator install￼](https://www.youtube.com/watch?v=t1N6UjEF83Y)

Maynard Family Homestead

221K views • 4 years ago

[![](https://i.ytimg.com/vi/GV_D5aDgSjY/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLB9zFP6B4X1MTIMso6VLfNfWvbFxQ)\\
\\
24:38](https://www.youtube.com/watch?v=GV_D5aDgSjY&pp=ugUEEgJlbg%3D%3D)

### [100A to 200A Panel Upgrade with Portable Generator Wiring \#200AMP \#ElectricServiceUpgrade](https://www.youtube.com/watch?v=GV_D5aDgSjY&pp=ugUEEgJlbg%3D%3D)

Electrician Ron

434K views • 3 years ago

[![](https://i.ytimg.com/vi/EiRW6rpLxyQ/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLByccnKvagyoWaUl1Ymt4k17Yf8Lw)\\
\\
10:33](https://www.youtube.com/watch?v=EiRW6rpLxyQ&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

### [Budget Friendly Emergency Backup Power - Transfer Switch](https://www.youtube.com/watch?v=EiRW6rpLxyQ&pp=ugUEEgJlbtIHCQnTCgGHKiGM7w%3D%3D)

Hometown Acres

2.5M views • 5 years ago

[![](https://i.ytimg.com/vi/4PRQxpPcnTc/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDMUC20RfEpWXtsDOrazh_hHadPaA)\\
\\
18:46](https://www.youtube.com/watch?v=4PRQxpPcnTc)

### [Generac Generator Installation Part 2\| Clark, NJ](https://www.youtube.com/watch?v=4PRQxpPcnTc)

Electrician Ron

60K views • 3 years ago

[![](https://i.ytimg.com/vi/9BBmLKSet7U/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDpqRpVdijQwtqIVHcQW2DIygm19g)\\
\\
6:15](https://www.youtube.com/watch?v=9BBmLKSet7U&pp=ugUEEgJlbg%3D%3D)

### [How much fuel does a 24kw Generac standby generator use?](https://www.youtube.com/watch?v=9BBmLKSet7U&pp=ugUEEgJlbg%3D%3D)

Maynard Family Homestead

219K views • 2 years ago

[![](https://i.ytimg.com/vi/U_xNZ7-SFeU/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAAtwwSLJV7MIiKfRPdX3pn1GBweQ)\\
\\
5:31](https://www.youtube.com/watch?v=U_xNZ7-SFeU&pp=0gcJCdMKAYcqIYzv)

### [Generac 16kW whole house power backup DIY Installation](https://www.youtube.com/watch?v=U_xNZ7-SFeU&pp=0gcJCdMKAYcqIYzv)

bill fieldstone

228K views • 7 years ago

[![](https://i.ytimg.com/vi/yRvAnjYvW9g/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLD9pEzjszyie6sVSuFI0oxeqbcqIg)\\
\\
28:31](https://www.youtube.com/watch?v=yRvAnjYvW9g)

### [Unlocking the Basics: Wiring a Receptacle Outlet Start-to-Finish](https://www.youtube.com/watch?v=yRvAnjYvW9g)

Smarter Sparky

227K views • 4 months ago

[![](https://i.ytimg.com/vi/fXAsXwhjPRY/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCgdOkUFO_1SX7OlMDTnYG2ixe2uw)\\
\\
9:23](https://www.youtube.com/watch?v=fXAsXwhjPRY&pp=ugUHEgVlbi1VUw%3D%3D)

### [How To Choose Between A Transfer Switch Vs Interlock Kit With Power Inlet Box](https://www.youtube.com/watch?v=fXAsXwhjPRY&pp=ugUHEgVlbi1VUw%3D%3D)

How To Home

882K views • 4 years ago

[![](https://i.ytimg.com/vi/2bbZbrHIX2w/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBI5vziOwOEERT3_zNaCEyy4I1VeQ)\\
\\
25:55](https://www.youtube.com/watch?v=2bbZbrHIX2w)

### [How Does the Furnace Control Board Work? – HVAC Training](https://www.youtube.com/watch?v=2bbZbrHIX2w)

Pioneer HVAC Controls

127K views • 4 months ago

[![](https://i.ytimg.com/vi/JAku_ppO8Kc/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDnQAQRMAt2XZ1KmgYETM-viwHrzw)\\
\\
14:09](https://www.youtube.com/watch?v=JAku_ppO8Kc&pp=ugUEEgJlbg%3D%3D)

### [Generac's Biggest Update in Years](https://www.youtube.com/watch?v=JAku_ppO8Kc&pp=ugUEEgJlbg%3D%3D)

Generac Doctor

47K views • 7 months ago

[![](https://i.ytimg.com/vi/NUSNa-7Hecw/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBfn0rrjGvq_thcqSulqTVQwvYwSw)\\
\\
16:22](https://www.youtube.com/watch?v=NUSNa-7Hecw&pp=ugUHEgVlbi1HQg%3D%3D)

### [Sub Panels Explained - Why are neutral and ground separated?](https://www.youtube.com/watch?v=NUSNa-7Hecw&pp=ugUHEgVlbi1HQg%3D%3D)

The Engineering Mindset

2.5M views • 2 years ago

[![](https://i.ytimg.com/vi/g1G4HHx7rLw/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCUEcgMMjlAwJC_-g7v9OY_qHHwCw)\\
\\
23:21](https://www.youtube.com/watch?v=g1G4HHx7rLw&pp=ugUEEgJlbg%3D%3D)

### [DIY Transfer Switch Install for Home Backup Power! Easier Than You Think!](https://www.youtube.com/watch?v=g1G4HHx7rLw&pp=ugUEEgJlbg%3D%3D)

Watt's Next?

9.6K views • 10 days ago

[![](https://i.ytimg.com/vi/5y7RaJSAMZQ/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBJuRfPgBEJebFUeNhgF_JutcSjYw)\\
\\
12:55](https://www.youtube.com/watch?v=5y7RaJSAMZQ&pp=ugUHEgVlbi1VUw%3D%3D)

### [Watch This Before Connecting a Backup Generator to Your Home.](https://www.youtube.com/watch?v=5y7RaJSAMZQ&pp=ugUHEgVlbi1VUw%3D%3D)

Backyard Maine

839K views • 1 year ago

[![](https://i.ytimg.com/vi/7Rjd5rLy98M/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCNbSGPl0GCiixAVqxFlHxewvMiKA)\\
\\
2:05:46](https://www.youtube.com/watch?v=7Rjd5rLy98M)

### [Hard Starting Since New - Generac Standby Generator](https://www.youtube.com/watch?v=7Rjd5rLy98M)

James Condon

228K views • 3 months ago

[![](https://i.ytimg.com/vi/tqDDkqc4vcI/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCKV5t3OwwRzzy4Z_qx_Cmtx4_A2Q)\\
\\
55:06](https://www.youtube.com/watch?v=tqDDkqc4vcI)

### [How To Install A Whole House Generac Generator And A 200 Amp Generac Transfer Switch. \#24KWGenerac](https://www.youtube.com/watch?v=tqDDkqc4vcI)

Fix it John

176K views • 2 years ago

[![](https://i.ytimg.com/vi/YzGmMMH-MI8/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLB_9qaOcAhZvOf-nQYXFVewl-JOfA)\\
\\
33:33](https://www.youtube.com/watch?v=YzGmMMH-MI8&pp=ugUEEgJlbg%3D%3D)

### [Installing A Whole House Generator - Generac 22KW](https://www.youtube.com/watch?v=YzGmMMH-MI8&pp=ugUEEgJlbg%3D%3D)

Advantage Heating & Cooling

68K views • 2 years ago

[![](https://i.ytimg.com/vi/Hug6XckVc8E/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBEcU5WfAdEiNZWP9EQlN9FNooRfQ)\\
\\
9:01](https://www.youtube.com/watch?v=Hug6XckVc8E)

### [How to Install a Generator Transfer Switch](https://www.youtube.com/watch?v=Hug6XckVc8E)

EZ Generator Switch

2.6M views • 13 years ago

[![](https://i.ytimg.com/vi/gfaw-XAvn4M/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLAyE9elpTQBGNMIVQk0q3NjrAnBqQ)\\
\\
49:02](https://www.youtube.com/watch?v=gfaw-XAvn4M&pp=ugUEEgJlbg%3D%3D)

### [How To Wire A Sub Panel - VERY DETAILED INSTALLATION! Start To Finish](https://www.youtube.com/watch?v=gfaw-XAvn4M&pp=ugUEEgJlbg%3D%3D)

The Excellent Laborer

1M views • 2 years ago

[![](https://i.ytimg.com/vi/JGxFeGVTAAk/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLC4NSIsm5IDSo-3hip6EE9hx54dmQ)\\
\\
51:14](https://www.youtube.com/watch?v=JGxFeGVTAAk&pp=ugUEEgJlbg%3D%3D)

### [FULL 200 AMP SERVICE UPGRADE \| CLARK, NJ](https://www.youtube.com/watch?v=JGxFeGVTAAk&pp=ugUEEgJlbg%3D%3D)

Electrician Ron

153K views • 3 years ago

[![](https://i.ytimg.com/vi/t35lwTPqxx0/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLBKlgOsvTCCqSpEvd0Vf4NmO5yVqg)\\
\\
45:37](https://www.youtube.com/watch?v=t35lwTPqxx0)

### [26 KW Generac Generator With Two 200 amp Transfer Switches Installed The EASY WAY !!!](https://www.youtube.com/watch?v=t35lwTPqxx0)

Southern Homestead Transformation

5.2K views • 7 months ago

[![](https://i.ytimg.com/vi/TZJVgrMvc84/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDTRGJb1V5e_cJoRVcZBIps-65n_w)\\
\\
25:41](https://www.youtube.com/watch?v=TZJVgrMvc84&pp=ugUEEgJlbg%3D%3D)

### [Generac / Honeywell Generator Overspeed Failure Plus Engine Problems!](https://www.youtube.com/watch?v=TZJVgrMvc84&pp=ugUEEgJlbg%3D%3D)

HVACR Survival

58K views • 3 years ago

[![](https://i.ytimg.com/vi/yvEkoUAY8-0/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLCznR2MumekY87q_x21MeYOvo2ItQ)\\
\\
15:36](https://www.youtube.com/watch?v=yvEkoUAY8-0&pp=0gcJCdMKAYcqIYzv)

### [22 Kw Generac Backup Generator complete Installation video with 200 Amps Automatic Transfer Switch](https://www.youtube.com/watch?v=yvEkoUAY8-0&pp=0gcJCdMKAYcqIYzv)

A Plus Air Systems

104K views • 4 years ago

[![](https://i.ytimg.com/vi/GLgtFCJlVFQ/hqdefault.jpg?sqp=-oaymwEmCKgBEF5IWvKriqkDGQgBFQAAiEIYAdgBAeIBCggYEAIYBjgBQAE=&rs=AOn4CLDtRjgx5jcUDXHZyiwTU--E6wMDoQ)\\
\\
8:36](https://www.youtube.com/watch?v=GLgtFCJlVFQ&pp=ugUHEgVlbi1VU9IHCQnTCgGHKiGM7w%3D%3D)

### [How to Install a Manual Transfer Switch for a Portable Generator \| Ask This Old House](https://www.youtube.com/watch?v=GLgtFCJlVFQ&pp=ugUHEgVlbi1VU9IHCQnTCgGHKiGM7w%3D%3D)

This Old House

3.3M views • 8 years ago

---

## [PDF] For Automatic Transfer Switch - Generac Power Systems

**Source:** https://dam.generac.com/ImConvServlet/imconv/5cedf879086ee9cddac94456d465f5970c539b9f/original

Owner’s Manual
For
Automatic Transfer Switch
100 Amp with 16 Circuit Load Center

Model Number
G0041479

SERIAL NUMBER: \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

Register your DR Power Equipment
product at
[www.drpower.com](http://www.drpower.com/)
1-888-447-3734

Para español , visita: [www.drpower.com/pages/content/customer-support/product-support](http://www.drpower.com/pages/content/customer-support/product-support)
Pour le français, visiter : [www.drpower.com/pages/content/customer-support/product-support](http://www.drpower.com/pages/content/customer-support/product-support)

* * *

WARNING
Operating, servicing and maintaining this

Operating, servicing and maintaining this
equipment can expose you to chemicals
including engine exhaust, carbon monoxide,
phthalates, and lead, which are known to the
State of California to cause cancer and birth
defects or other reproductive harm. To
minimize exposure, avoid breathing exhaust,
do not idle the engine except as necessary,
service your equipment in a well-ventilated
area and wear gloves or wash your hands
frequently when servicing your equipment.
For more information go to
[www.P65Warnings.ca.gov.(000393)](http://www.p65warnings.ca.gov.(000393)/)

* * *

Table of Contents

### Section 1: Introduction and Safety

Introduction .....1
Safety Rules .....1
Safety Symbols and Meanings .....2
General Hazards .....3

### Section 2: General Information

Introduction .....5
Unpacking .....5
Equipment Description .....5
Transfer Switch Mechanism .....5
Utility Service Circuit Breaker (not supplied) .....6
Transfer Switch Data Decal .....6
Transfer Switch Enclosure .....6
Safe Use of Transfer Switch .....6

### Section 3: Installation

Introduction to Installation .....7
Mounting .....7
Installing Breakers .....7
Connecting Power Source and Load Lines .....7
Connecting Start Circuit Wires .....8
Installing Branch Circuit Conductors –
USA Installations .....9
Installing Branch Circuit Conductors –
Canadian Installations .....9
Auxiliary Contact .....10
Fault Current Label .....10

### Section 4: Operation

**Functional Tests and Adjustments** .....11

**Manual Operation** .....11
Close to Utility Source Side .....11
Close to Generator Source Side .....11
Return to Utility Source Side .....12

**Voltage Checks** .....12
Utility Voltage Checks .....12
Generator Voltage Checks .....12

**Generator Tests Under Load** .....12

**Checking Automatic Operation** .....13

**Installation Summary** .....13

**Shutting Generator Down While Under Load Or During A Utility Outage** .....13

**Fuse Removal and Installation** .....14

* * *

### Section 5: Drawings and Diagrams

**Installation Drawing** .....15
Drawing No. 10000012171 .....15

**Interconnection Drawing** .....16
Drawing No. 10000016945 (Page 1 of 2) .....16
Drawing No. 10

* * *

This page intentionally left blank.

* * *

Section 1: Introduction and Safety

Introduction

Thank you for purchasing a DR Power Equipment
product. This unit has been designed to provide high
performance, efficient operation, and years of use when
maintained properly.

WARNING

Consult Manual. Read and understand manual
completely before using product. Failure to
completely understand manual and product
could result in death or serious injury.(000100a)

Read this manual thoroughly and understand all of the
instructions, cautions, and warnings before using this
equipment. If any section of the manual is not
understood, contact your nearest authorized dealer, or
contact Customer Service at 1-855-447-3734, or
[www.drpower.com](http://www.drpower.com/) with any questions or concerns.
The owner is responsible for proper maintenance and

The owner is responsible for proper maintenance and
safe use of the equipment. Before operating or servicing
this transfer switch:
• Study all warnings in this manual and on the

• Study all warnings in this manual and on the
product carefully.
• Become familiar with this manual and the unit

• Become familiar with this manual and the unit
before use.

• Refer to the installation sections of the manual for
instructions on final assembly procedures. Follow
the instructions completely.
Save these instructions for future reference. ALWAYS

The information in this manual is accurate based on
products produced at the time of publication. The
manufacturer reserves the right to make technical
updates, corrections, and product revisions at any time
without notice.

Safety Rules

The manufacturer cannot anticipate every possible
circumstance that might involve a hazard. The warnings
in this manual, and on tags and decals affixed to the unit
are, therefore, not all inclusive. If using a procedure, work
method or operating technique that the manufacturer
does not specifically recommend, verify that it is safe for
others. Also make sure the procedure, work method or
operating technique utilized does not render the
equipment unsafe.
Throughout this publication, and on tags and decals

(000001)

Throughout this publication, and on tags and decals
affixed to the transfer switch, DANGER, WARNING,
CAUTION and NOTE blocks are used to alert personnel
to special instructions about a particular operation that
may be hazardous if performed incorrectly or carelessly.
Observe them carefully. Their definitions are as follows:

DANGER

(000002)

Indicates a hazardous situation which, if not avoided,
will result in death or serious injury.

WARNING

Indicates a hazardous situation which, if not avoided,
could result in death or serious injury.

CAUTION

(000003)

Indicates a hazardous situation which, if not avoided,
could result in minor or moderate injury.

NOTE: Notes contain additional information important to
a procedure and will be found within the regular text of
this manual.
These safety alerts cannot eliminate the hazards that

These safety alerts cannot eliminate the hazards that
they indicate. Common sense and strict compliance with
the special instructions while performing the action or
service are essential to preventing accidents.

* * *

Safety Symbols and Meanings

DANGER

Electrocution. High voltage is present at
transfer switch and terminals. Contact with live
terminals will result in death or serious injury.
(000129)

DANGER

Electrocution. Water contact with a power
source, if not avoided, will result in death
or serious injury.

DANGER

Electrocution. In the event of electrical accident,

immediately shut power OFF. Use non-conductive

implements to free victim from live conductor. Apply

first aid and get medical help. Failure to do so will

result in death or serious injury. (000145)

DANGER

Electrical backfeed. Use only approved switchgear to
isolate generator from the normal power source.
Failure to do so will result in death, serious injury,
and equipment damage.
(000237)

DANGER
Electrocution, equipment and property damage.

Electrocution, equipment and property damage.
Handle transfer switches carefully when installing.
Never install a damaged transfer switch. Doing so
could result in death or serious injury, equipment
and property damage.
(000195)

Electrocution. Do not disable or modify the
connection box door safety switch. Doing so
will result in death or serious injury.
(000157)

DANGER

(000157)

DANGER

(000120)

Equipment malfunction. Installing a dirty or damaged
transfer switch will cause equipment malfunction and
will result in death or serious injury.
(000119)

WARNING
Electric shock. Only a trained and licensed electrician

Electric shock. Only a trained and licensed electrician
should perform wiring and connections to unit. Failure
to follow proper installation requirements could result in
death, serious injury, and equipment or property damage.
(000155a)

(000121)

CAUTION

Equipment damage. Verify all conductors are tightened
to the factory specified torque value. Failure to do so
could result in damage to the switch base.
(000120)

Equipment damage. Perform functional tests in the
exact order they are presented in the manual.
Failure to do so could result in equipment damage.

CAUTION

CAUTION

Equipment damage. Exceeding rated voltage and
current will damage the auxiliary contacts. Verify
that voltage and current are within specification
before energizing this equipment.
(000134a)

* * *

General Hazards

DANGER

Electrical backfeed. Use only approved switchgear to
isolate generator from the normal power source.
Failure to do so will result in death, serious injury,
and equipment damage.
(000237)

(000237)

DANGER

Electrocution. High voltage is present at
transfer switch and terminals. Contact with live
terminals will result in death or serious injury.
(000129)

DANGER

DANGER

Electrocution. Water contact with a power
source, if not avoided, will result in death
or serious injury.

(000104)

DANGER

Electrocution. Do not wear jewelry while
working on this equipment. Doing so will
result in death or serious injury.
(000188)

DANGER

Electrocution. Only authorized personnel should
access transfer switch interior. Transfer switch
doors should be kept closed and locked. Failure to
do so will result in death or serious injury. (000213)

(000191)

DANGER
Electrocution. In the event of electrical accident,

Electrocution. In the event of electrical accident,

immediately shut power OFF. Use non-conductive

implements to free victim from live conductor. Apply

first aid and get medical help. Failure to do so will

result in death or serious injury. (000145)

WARNING

Sudden start-up. Always set the safety disconnect
switch to MANUAL before working on equipment.
Failure to do so could result in death or serious injury.
(000194)

• Competent, qualified personnel should install,
operate and service this equipment. Adhere strictly
to local, state and national electrical and building
codes. When using this equipment, comply with
regulations established by the National Electrical
Code (NEC), CSA Standard; C22.1 Canadian
Electric Code, the Occupational Safety and Health
Administration (OSHA), or the local agency for
workplace health and safety.
• If working on this equipment while standing on

• If working on this equipment while standing on
metal or concrete, place insulative mats over a dry
wood platform. Work on this equipment only while
standing on such insulative mats.
• Never work on this equipment while physically or

• Never work on this equipment while physically or
mentally fatigued.
• Any voltage measurements should be performed

• Any voltage measurements should be performed
with a meter that meets UL3111 safety standards,
and meets or exceeds overvoltage class CAT III.

* * *

This page intentionally left blank.

* * *

Section 2: General Information

Introduction
Thank you for purchasing a DR Power Equipment transfer switch. This manual has been prepared especially for the purpose of familiarizing personnel with the design, application, installation, operation and servicing of the applicable equipment. Read this manual carefully and comply with all instructions. This will help to prevent accidents or damage to equipment that might otherwise be caused by carelessness, incorrect application, or improper procedures.
Every effort has been expended to make sure that the contents of this manual are both accurate and current. The manufacturer, however, reserves the right to change, alter or otherwise improve the product or manual at any time without prior notice.

Unpacking
Carefully unpack the transfer switch. Inspect closely for any damage that might have occurred during shipment. The purchaser must file with the carrier any claims for loss or damage incurred while in transit.
Check that all packing material is completely removed from the switch prior to installation.

Equipment Description
The automatic transfer switch is used for transferring electrical load from a UTILITY (NORMAL) power source to a GENERATOR (STANDBY) power source. Such a transfer of electrical loads occurs automatically when the UTILITY power source has failed or is substantially reduced and the GENERATOR source voltage and frequency have reached an acceptable level. The transfer switch prevents electrical feedback between two different power sources (such as the UTILITY and GENERATOR sources) and, for that reason, codes require it in all standby electric system installations.
The transfer switch consists of a transfer mechanism and an integrated PCB. The integrated PCB incorporates the transfer relay, sensing-battery charge fuses, and connection points for the start circuit wires.

Transfer Switch Mechanism
See Figure 2-1. These switches are used with a single-phase system when the single-phase NEUTRAL line is to be connected to a neutral lug and is not to be switched.
Solderless, screw-type terminal lugs are standard.

The conductor size range is as follows:

Switch Rating Wire Range Conductor Tightening Torque Lug Temp. Rating
100A #14-1/0AWG (CuAl) 50 in-lbs (5.6 Nm) 167°F (75°C)

This transfer switch is suitable for control of motors, electric discharge lamps, tungsten filament and electric heating equipment where the sum of motor full load ampere ratings and the ampere ratings of other loads do not exceed the ampere rating of the switch and the tungsten load does not exceed 30 percent of the switch rating.
This UL listed transfer switch is for use in optional standby systems only (NEC article 702).
This transfer switch is suitable for use on a circuit capable of 10,000 (100A) symmetrical amperes, 240 VAC maximum.

Figure 2-1. Typical Single-Phase ATS Transfer Mechanism

A Utility Closing Coil
B Generator Closing Coil
C Utility Lugs (N1 & N2)
D Generator Lugs (E1 & E2)
E Load Lugs (T1 & T2)

* * *

Utility Service Circuit Breaker (not supplied)

This switch is listed for use with the following one inch breakers:

• Siemens\*
• Murray\*
• Eaton
• Square D

\*Including GFCI, AFCI and tandem breakers up to 50 amps.

NOTE: For branch circuits over 50 amps, only listed Siemens or Murray circuit breakers shall be used.

Transfer Switch Data Decal

A data decal is permanently affixed to the transfer switch enclosure. Use this transfer switch only with the specific limits shown on the data decal and on other decals and labels that may be affixed to the switch. This will prevent damage to equipment and property.

When requesting information or ordering parts for this equipment, make sure to include all information from the data decal.

For future reference, record the Model and Serial numbers in the space provided on the front cover of this manual

Transfer Switch Enclosure

The standard switch enclosure is a National Electrical Manufacturer's Association (NEMA) and UL 3R type. UL and NEMA 3R (indoor/outdoor rated) type enclosures primarily provide a degree of protection against falling rain and sleet; are undamaged by the formation of ice on the enclosure.

Safe Use of Transfer Switch

WARNING

Consult Manual. Read and understand manual completely before using product. Failure to completely understand manual and product could result in death or serious injury(000100a)

Before installing, operating or servicing this equipment, read the SAFETY RULES carefully. Comply strictly with all SAFETY RULES to prevent accidents and/or damage to the equipment. The manufacturer recommends that a copy of the SAFETY RULES be posted near the transfer switch. Also, be sure to read all instructions and information found on tags, labels and decals affixed to the equipment.

Publications that outline the safe use of transfer switches are the following:

• NFPA 70: National Electrical Code
• UL 1008: Standard for Safety—Automatic Transfer Switches
• UL67: Standard for Panelboards
• CSA C22.1: Canadian Electrical Code

NOTE: It is essential to use the latest version of any standard to ensure correct and current information.

* * *

Section 3: Installation

Introduction to Installation
This equipment has been tested at the factory. Installing
the switch includes the following procedures:
• Mounting the enclosure.
• Installing the circuit breakers.
• Connecting power source and load leads.
• Connecting the generator control wiring.
• Connecting branch circuit wiring.

Mounting
Mounting dimensions for the transfer switch enclosure
are in this manual. Enclosures are typically wallmounted. See Drawings and Diagrams.
This transfer switch is mounted in a UL type 3R
enclosure. It can be mounted outside or inside and
should be based on the layout of installation,
convenience and proximity to the utility supply and load
center.
Install the transfer switch as close as possible to the
electrical loads that are to be connected to it. Mount the
switch vertically to a rigid supporting structure. To prevent
switch distortion, level all mounting points. If necessary,
use washers behind mounting holes to level the unit.

Installing Breakers
See Figure 3-1. Insert the tab on the breaker (A) into the
hook on the bus (B). Push the breaker into the bus until it
snaps into place.

Connecting Power Source and Load Lines

DANGER
Electrocution. Turn utility and emergency
power supplies to OFF before connecting
power source and load lines. Failure to do so
will result in death or serious injury. (000116)

Installation and interconnection diagrams are provided in
this manual. See Drawings and Diagrams.

NOTE: All installations must comply with national, state and
local codes. It is the responsibility of the installer to perform
an installation that will pass the final electrical inspection.

The utility supply, generator, and customer load
connections are made at the transfer switch mechanism,
inside the switch enclosure.

Conductor sizes must be adequate to handle the
maximum current to which they will be subjected, based on
the 75°C column of tables, charts, etc. used to size
conductors. The installation must comply fully with all
applicable codes, standards and regulations.

All power cables can enter the enclosure through the
knockouts provided. If not using the knockouts, conduit
entry into the enclosure above the level of uninsulated
live parts shall use fittings listed for use in wet locations
to maintain the Type 3R rating.

NOTE: If aluminum conductors are used, apply corrosion
inhibitor to conductors. After tightening terminal lugs,
carefully wipe away any excess corrosion inhibitor.

Tighten terminal lugs to the torque values as noted
Utility Service Circuit Breaker (not supplied) and on
the decal located on the inside of the door. After
tightening terminal lugs, carefully wipe away any excess
corrosion inhibitor.

CAUTION
Equipment damage. Verify all conductors are tightened
to the factory specified torque value. Failure to do so
could result in damage to the switch base.

(000120)

Connect power source and load conductors to clearly
marked terminal lugs on transfer mechanism as follows:

1. Install a 2-pole, 100 Amp breaker in the main
   distribution panel. This will be the utility (normal)
   power source for transfer switch.
2. Install a conduit between the main distribution
   panel and connect switch enclosures. Properly
   sized power cables can also be installed without
   the use of conduit if needed.

Figure 3-1. Installing Breakers

* * *

3. Run the conductors from 2-pole, 100 Amp breaker through conduit, or install power cable.
4. Connect utility (normal) power source cables to N1 and N2 terminals on the transfer switch mechanism.
5. Connect the generator (standby) source power cables to transfer switch terminals E1, E2.
6. Connect utility (normal) and generator ground cables to ground connection and neutral cables to the neutral bar.
7. Customer LOAD leads are not pre-wired at the factory.
8. Neutral and Ground Bars Accept #4-#14 AWG Cu/Al cable. If a larger Neutral or Ground Cable is required for the Generator Connection, Please utilize Lug Kit Siemens ECLK2 or Generac part number 10000006293 which accepts #4-2/O Cu/Al cable.

NOTE: Conduits must be properly supported. Cables can also be installed. Cables and conductors must be of approved insulative qualities and of the correct wire gauge size in accordance with applicable codes. Torque all lugs to the indicated torque settings with a calibrated torque wrench or screwdriver.

Connecting Start Circuit Wires
Control system interconnections consist of N1, N2, and T1, and leads 23, 194 and 0 (see Figure 3-2).

NOTE: Generac Type TC-ER-JP power and control tray cable can be installed as permitted by the 2017 NEC. Type TC-ER-JP cable contains color-coded power and control conductors.

The generator control wiring is a Class 1 signaling circuit. Reference instruction manual of specific engine generator for wiring connection details. Screw heads are straight bladed and cross-bladed, and should be tightened to 3.5 in-lb (0.4 Nm).
Recommended minimum wire gauge is No. 18 AWG, up to 500 ft (152.4 m). Terminals are listed for copper conductors only.

Exception: Conductors of AC and DC circuits, rated 1000 volts nominal, or less, shall be permitted to occupy the same equipment, cable, or conduit. All conductors shall have an insulation rating equal to at least the maximum circuit voltage applied to any conductor within the equipment, cable, or conduit. See NEC 300.3(C)(1).

Table 3-1, Customer Wiring Connections Integrated PCB (non-SACM)

Terminal Numbering Decal Wire Numbers

BLUE\* T1—Fused 120 VAC for battery charger
YELLOW N1—Fused 240 VAC Sensing for utility dropout and pickup
YELLOW WITH BLACK STRIPE N2—Fused 240 VAC Sensing for utility dropout and pickup
BLACK 0—DC (-) Not required
RED 194—DC (+) 12 VDC for transfer controls
WHITE 23—Transfer control signal wire

- Required to supply utility or generator voltage to the generator battery charger.

* * *

Installing Branch Circuit Conductors – USA Installations

1. Select which branch circuits will be protected by the generator in the normal power panel board.
2. Turn the circuit breaker in the normal power panel board to the off position.
3. Remove the ungrounded (hot) conductor from the circuit breaker and neutral conductor from the neutral terminal bar in the normal power panel board.

NOTE: If the circuit to be protected is part of a multi-wire branch circuit, the entire multi-wire branch circuit has to be relocated to the transfer switch panel board. (See NEC 210.4) The branch circuit wiring can be removed from the normal power panel board and installed in the transfer switch panel board, or spliced onto new branch circuit wiring originating from the transfer switch panel board.

4. If the normal power panel board is being used as a junction box for the protected branch circuit conductors, install an NEC approved conduit(s), raceway(s), or other approved wiring method between the transfer switch panel board and normal power panel board.

5. Install properly sized branch circuit conductors between the transfer switch panel board to the branch circuit conductors to be protected by the transfer switch.

6. Use listed wire nuts or any other approved termination device to connect the branch circuit conductors.

7. Install the provided label on the existing panel board that indicates the location of the disconnecting means for the pass through conductors.

8. If the generator protected branch circuit conductors are being re-installed into the transfer switch panel board, punch the required sized hole(s) for the cable, conduit, or raceway.

9. Route the branch circuit conductors into the transfer switch and terminate the equipment ground conductor on the equipment ground terminal bar, the neutral on the neutral terminal bar, and the ungrounded (hot) on the circuit breaker terminal.

10. Size all conductors, raceways, conduits, and junction boxes, if required, to the applicable NEC code articles and follow the NEC installation requirements for the wiring method(s) selected.


NOTE: For outdoor installations, any entry into the transfer switch enclosure that is above the level of uninsulated live parts shall use fittings listed for use for wet locations to maintain the NEMA 3R rating of the enclosure. The wiring methods installed shall be listed for use in wet locations.

Installing Branch Circuit Conductors – Canadian Installations

1. Select which branch circuits will be protected by the generator in the normal power panel board. Turn the circuit breaker in the normal power panel board to the off position.
2. Remove the ungrounded (hot) conductor from the circuit breaker and neutral conductor from the neutral terminal bar in the normal power panel board.

NOTE: If the circuit to be protected is part of a multi-wire branch circuit, the entire multi-wire branch circuit has to be relocated to the transfer switch panel board.

3. The Canadian Electric Code prohibits the use of the normal power panel board as a junction box, the generator protected branch circuit wiring will have to be relocated to a properly sized junction box, or reinstalled into the transfer switch panel board.

4. Punch the required sized hole(s) for the cable, conduit, or raceway.

5. Route the branch circuit conductors into the transfer switch and terminate the equipment ground conductor on the equipment ground terminal bar, the neutral on the neutral terminal bar, and the ungrounded (hot) on the circuit breaker terminal.

6. Size all conductors, raceways, conduits, and junction boxes, if required, to the applicable CEC code articles and follow the CEC installation requirements for the wiring method(s) selected.


NOTE: For outdoor installations, any entry into the transfer switch enclosure that is above the level of uninsulated live parts shall use fittings listed for use for wet locations to maintain the NEMA 3R rating of the enclosure. The wiring methods installed shall be listed for use in wet locations.

* * *

Installation

Auxiliary Contact
See Figure 3-3. If desired, there is one normally-closed
Auxiliary Contact (A) on the transfer switch to operate
customer accessories, remote advisory lights, or remote
annunciator devices. A suitable power source must be
connected to the common terminal. If needed, an extra
auxiliary contact can be added.

Figure 3-3. Auxiliary Contact
The auxiliary contact is normally closed when the transfer
switch is in utility mode. The contacts will open when the
transfer switch is in the standby power mode.
NOTE: Auxiliary Contact is rated 10 amps at 125 or 250
volts AC, and 0.6 amps at 125 volts DC.

CAUTION
Equipment damage. Exceeding rated voltage and
current will damage the auxiliary contacts. Verify
that voltage and current are within specification
before energizing this equipment. (000134a)

Fault Current Label
See Figure 3-4. A Fault Current Identification Label is
provided in the bag containing the unit Owner's Manual and
transfer switch manual operating handle. The 2017 NEC
requires that the short-circuit current rating of the transfer
equipment, based on the type of overcurrent protective
device protecting the transfer equipment, be field marked on
the exterior of the transfer equipment. For NEC compliance,
verify the required short-circuit current rating of the transfer
switch before installation.The completed label provides the
local AHU (Authority Having Jurisdiction) with the information
he or she may require during inspection.
Apply the label to the exterior of the transfer switch
enclosure. Use a pen to fill in the required information, and
then cover the label with the clear protective decal.

Figure 3-4. Fault Current Label

* * *

Operation

Section 4: Operation

Functional Tests and Adjustments
Following transfer switch installation and interconnection,
inspect the entire installation carefully. A competent,
qualified electrician should inspect it. The installation
should comply strictly with all applicable codes,
standards, and regulations. When absolutely certain the
installation is proper and correct, complete a functional
test of the system.

CAUTION
Equipment damage. Perform functional tests in the
exact order they are presented in the manual.
Failure to do so could result in equipment damage.
(000121)

IMPORTANT: Before proceeding with functional
tests, read and make sure all instructions and
information in this section is understood. Also read
the information and instructions of labels and decals
affixed to the switch. Note any options or
accessories that might be installed and review their
operation.

Manual Operation

DANGER
Electrocution. Do not manually transfer under load.
Disconnect transfer switch from all power sources,
prior to manual transfer. Failure to do so will result
in death or serious injury, and equipment damage.
(000132)

See Figure 4-1. A manual handle is shipped with the
transfer switch owner's manual. Manual operation must
be checked BEFORE the transfer switch is operated
electrically. To check manual operation, proceed as follows:

1. Verify the generator is in the OFF mode.
2. Turn OFF both UTILITY (service disconnect circuit
   breaker) and EMERGENCY (generator main line
   circuit breaker) power supplies to the transfer
   switch.
3. Note position of transfer mechanism main contacts
   by observing the movable contact carrier arm. This
   can be viewed through the long narrow slot in the
   inside cover of the ATS. The top of the movable
   contact carrier arm is yellow to be easily identified.
   • Manual operation handle in the UP position - LOAD
   terminals (T1, T2) are connected to UTILITY
   terminals (N1, N2).

• Manual operation handle in the DOWN position -
LOAD terminals (T1, T2) are connected to
EMERGENCY terminals (E1, E2).

CAUTION
Equipment damage. Do not use excessive force while
manually operating the transfer switch. Doing so could
result in equipment damage.
(000122)

Close to Utility Source Side
Before proceeding, verify the position of the switch by
observing the position of manual operation handle in
Figure 4-1. If the handle is UP, the contacts are closed in
the NORMAL (UTILITY) position, no further action is
required. If the handle is DOWN, proceed with Step 1.

1. With the handle inserted into the movable contact
   carrier arm, move handle UP. Be sure to hold on to
   the handle as it will move quickly after the center of
   travel.
2. Remove manual operating handle from movable
   contact carrier arm. Return handle to storage
   bracket.

Figure 4-1. Manual Transfer Switch Operation

Close to Generator Source Side
Before proceeding, verify the position of the switch by
observing the position of manual operation handle in
Figure 4-1. If the handle is DOWN, the contacts are
closed in the GENERATOR (STANDBY) position. No
further action is required. If the handle is UP, proceed
with Step 1.

1. With the handle inserted into the movable contact
   carrier arm, move the handle DOWN. Be sure to
   hold on to the handle as it will move quickly after
   the center of travel.
2. Remove manual operating handle from movable
   contact carrier arm. Return handle to storage
   bracket.

* * *

Operation

Return to Utility Source Side

1. Manually actuate switch to return manual operating handle to the UP position.
2. Remove manual operating handle from movable contact carer arm. Return handle to storage bracket.

Voltage Checks
NOTE: Use the Digital Multimeter (DMM) LowZ low input impedance setting to collect accurate voltage measurements. LowZ eliminates the possibility of inaccurate ghost voltage readings, also known as phantom voltage or stray voltage readings. Refer to the DMM manufacturer's literature for additional information.

Utility Voltage Checks

1. Turn ON the UTILITY power supply to the transfer switch using the breaker in main distribution panel.

DANGER
Electrocution. High voltage is present at transfer switch and terminals. Contact with live terminals will result in death or serious injury. (000129)
2\. With an accurate AC voltmeter, check for correct voltage. Measure across ATS terminal lugs N1 and N2; N1 to NEUTRAL and N2 to NEUTRAL.

DANGER
Electrocution. Turn utility supply OFF before working on utility connections of the transfer switch. Failure to do so will result in death or serious injury. (000123)

Generator Voltage Checks

1. On the generator panel, select the MANUAL mode of operation. The generator should crank and start.
2. Let the generator stabilize and warm up at no-load for at least five minutes.
3. Set the generator's main circuit breaker (CB1) to its ON or CLOSED position.

DANGER
Electrocution. High voltage is present at transfer switch and terminals. Contact with live terminals will result in death or serious injury. (000129)
4\. With an accurate AC voltmeter and frequency meter, check the no-load, voltage and frequency. Measure across ATS terminal lugs E1 to E2; E1 to NEUTRAL and E2 to NEUTRAL

Frequency 60-62 Hz
Terminals E1 to E2 240-246 VAC
Terminals E1 to NEUTRAL 120-123 VAC
Terminals E2 to NEUTRAL 120-123 VC

5. When certain that generator supply voltage is correct and compatible with transfer switch ratings, turn OFF the generator supply to the transfer switch.
6. Set the generator main circuit breaker (CB1) to OFF or OPEN.
7. On the generator panel, select the OFF mode to shut down the generator.

NOTE: DO NOT proceed until generator AC output voltage and frequency are correct and within stated limits.

Generator Tests Under Load

1. Set the generator main circuit breaker to OFF or OPEN.
2. Set the utility service disconnect circuit breaker to OFF or OPEN.
3. Manually actuate the transfer switch main contacts to the emergency (Standby) position. See Manual Operation.
4. To start the generator, select the MANUAL mode of operation. When engine starts, let it stabilize for a few minutes.
5. Set the generator main circuit breaker to ON or CLOSED. The generator now powers all LOAD circuits. Check generator operation under load as follows:
   • Turn on electrical loads to the full rated wattage/amperage capacity of the generator. DO NOT OVERLOAD.
   • With maximum rated load applied, check voltage and frequency across transfer switch terminals E1 and E2. Voltage should be greater than 230 VAC (240 VAC system); frequency should be greater than 59 Hz.
   • Verify that the gas pressure remains within acceptable parameters (see the generator Installation Guidelines manual).
   • Let the generator run under rated load for at least 30 minutes. With unit running, listen for unusual noises, vibration, overheating, etc., that might indicate a problem.
6. When checkout under load is complete, set main circuit breaker of the generator to the OFF or OPEN position.
7. Let the generator run at no-load for several minutes. Then, shut down by selecting the OFF mode.

* * *

8. Move the main switch contacts back to the utility
   position.

NOTE: See Manual Operation. Handle and operating
lever of transfer switch should be UP.

9. Turn on the utility power supply to transfer switch,
   using whatever means provided (such as a utility
   main line circuit breaker). The utility power source
   now powers the loads.
   The system is now set for fully automatic operation.

10. The system is now set for fully automatic operation.


Checking Automatic Operation

To check the system for proper automatic operation,
proceed as follows:

1. Verify generator is OFF.

2. Turn the utility power supply to the transfer switch
   ON, using the utility main line circuit breaker.

3. On the generator panel, select AUTO. The system
   is now ready for automatic operation.

4. Set the generator main circuit breaker to ON.

5. Turn utility power supply to the transfer switch OFF.
   With the generator ready for automatic operation, the
   engine should crank and start when the utility source
   power is turned OFF after a ten second delay (factory
   default setting). After starting, the transfer switch should
   connect load circuits to the standby side after a five (5)
   second delay. Let the system operate through its entire
   automatic sequence of operation.
   With the generator running and loads powered by


With the generator running and loads powered by
generator AC output, turn ON the utility power supply to
the transfer switch. The following should occur:
• After approximately 15 seconds, the switch should

• After approximately 15 seconds, the switch should
transfer loads back to the utility power source.
• Approximately one minute after re-transfer, the

With the generator in the AUTOMATIC mode, the system
is now set for fully automatic operation.

3. Educate the end-user on the proper operation,
   maintenance and service call procedures.

Shutting Generator Down While
Under Load Or During A Utility
Outage

Installation Summary

DANGER

Automatic start-up. Disconnect utility power and
render unit inoperable before working on unit.
Failure to do so will result in death or serious injury.
(000191)

IMPORTANT NOTE: To avoid equipment damage, follow
these steps, in order, during utility outages. Shutdowns
may be required during utility outages to perform routine
maintenance or to conserve fuel.

To turn the generator OFF:

1. Set the main utility disconnect to OFF (OPEN).

2. Set the generator MLCB (generator disconnect) to
   OFF (OPEN).

3. Allow the generator to run for a cool-down period of
   approximately one minute.
   At the controller, set the generator to OFF.

4. At the controller, set the generator to OFF.

5. Remove the 7.5A fuse from the controller.

6. Install 7.5A fuse in controller.


To turn the generator back ON:

2. Confirm the generator MLCB (generator
   disconnect) is OFF (OPEN).

3. At the controller, set the generator to AUTO mode.

4. Generator will start and run. Allow generator to run

5. Generator will start and run. Allow generator to run
   and warm up for a few minutes.

6. Set the MLCB (generator disconnect) to ON
   (CLOSED).


The system now operates in automatic mode.

* * *

Fuse Removal and Installation

See Figure 4-2. A fuse removal and installation tool (A)
is included in the control housing.

Figure 4-2. Fuse Removal and Installation Tool

If a fuse requires replacement, snap the tool free with an
appropriate tool such as diagonal pliers, and use it to
replace the fuse. The tool can be stored in the control
housing retainer directly above the fuses, with the large
thumb tab facing out.
Use only Generac replacement fuses—part number

Use only Generac replacement fuses—part number
100000005117, rated 240 VAC, 6.3 Amps, 10,000 AIC.

Alternative fuses are Littelfuse® 021606.3MXP or
Optifuse® FCD-6.3.

* * *

Section 5: Drawings and Diagrams

Drawing No. 10000012171

Automatic Transfer Switch Owner’s Manual

* * *

Interconnection Drawing

GROUP G

Drawing No. 10000016945 (Page 1 of 2)

EXPLODED VIEW:
INTERCONNECTION DIAGRAM 3R 16 CIRCUIT
DRAWING #: 10000016945

* * *

CANADIAN < ALTERNATE>

GENERATOR CUSTOMER CONNECTION

* * *

Wiring Diagram

Drawing No. 10000011429 (Page 1 of 2)

REVISION: -A-
DATE: 1/20/17

* * *

REVISION: -A-
DATE: 1/20/17

* * *

Schematic Diagram

Drawing No. 10000011443

GROUP G

SCHEMATIC - DIAGRAM HSB TRANSFER SWITCH 100A DRAWING #:10000011443

* * *

This page intentionally left blank.

* * *

This page intentionally left blank.

* * *

* * *

Part No. 10000024114 Rev. B 03/20/18

©2018 DR Power Equipment
All rights reserved
Specifications are subject to change without notice.
No reproduction allowed in any form without prior written consent
from DR Power Equipment.

75 Meigs Road
Post Office Box 25

Post Office Box 25
Vergennes, Vermont 05491

Vergennes, Vermont 05491
1-855-447-3734

[www.drpower.com](http://www.drpower.com/)

---

## [PDF] Installation and Owner's Manual

**Source:** https://www.wrc.noaa.gov/wrso/forms/0F9421.pdf

by Generac Power Systems, Inc.

Installation and
Owner’s Manual

7, 10, 13 and 16kW Air-cooled,
Automatic Standby Generators

Models: 005240, 005280 (6 kW NG, 7 kW LP)
005241, 005281 (9 kW NG, 10 kW LP)
005242, 005282 (13 kW NG, 13 kW LP)
005243, 005244, (15 kW NG, 16 kW LP)
005283, 005284

Not intended for use as Primary Power in place of utility or in
life-support applications.

DEADLY EXHAUST FUMES. OUTDOOR INSTALLATION ONLY!

* * *

INTRODUCTION
Thank you for purchasing this model of the Guardian

INTRODUCTION
Thank you for purchasing this model of the Guardian
product line by Generac Power Systems Inc. This
model is a compact, high performance, air-cooled,
engine-driven generator designed to automatically
supply electrical power to operate critical loads during a utility power failure.
This unit is factory installed in an all-weather, metal

This unit is factory installed in an all-weather, metal
enclosure that is intended exclusively for outdoor
installation. This generator will operate using either
vapor withdrawn liquid propane (LP) or natural gas
(NG).

If any portion of this manual is not understood, contact
the nearest Authorized Dealer for starting, operating
and servicing procedures.

Throughout this publication, and on tags and decals
affixed to the generator, DANGER, WARNING,
CAUTION and NOTE blocks are used to alert personnel to special instructions about a particular operation that may be hazardous if performed incorrectly
or carelessly. Observe them carefully. Their definitions are as follows:

DANGER

After this heading, read instructions that, if not
strictly complied with, will result in serious personal injury, including death, in addition to property
damage.

WARNING

After this heading, read instructions that, if not
strictly complied with, may result in serious personal injury or property damage.

CAUTION

After this heading, read instructions that, if not
strictly complied with, could result in damage to
equipment and/or property.
NOTE:

NOTE:

This symbol points out potential explosion haz-
$
ard.

These safety warnings cannot eliminate the hazards that they indicate. Common sense and strict
compliance with the special instructions while
performing the service are essential to preventing
accidents.
Four commonly used safety symbols accompany the

This symbol points out potential fire hazard.
!

After this heading, read explanatory statements
that require special emphasis.

The operator is responsible for proper and safe use
of the equipment. The manufacturer strongly recommends that the operator read this Owner's Manual
and thoroughly understand all instructions before
using this equipment. The manufacturer also strongly recommends instructing other users to properly
start and operate the unit. This prepares them if they
need to operate the equipment in an emergency.

CONTENTS

This manual contains pertinent owner’s information,
including warranty, electrical diagrams, exploded
views and lists of repair parts, for these different
models:
• 05240 & 05280 – 6 kW NG, 7 kW LP, single-cylin-

• 05240 & 05280 – 6 kW NG, 7 kW LP, single-cylinder GH-410 Engine
• 05241 & 05281 – 9.0 kW NG, 10 kW LP, V-twin

• 05241 & 05281 – 9.0 kW NG, 10 kW LP, V-twin
GT-530 Engine
• 05242 & 05282 – 13 kW NG, 13 kW LP, V-twin GT-

• 05242 & 05282 – 13 kW NG, 13 kW LP, V-twin GT-
990 Engine
• 05243, 05244, 05283 & 05284 – 15 kW NG, 16 kW

• 05243, 05244, 05283 & 05284 – 15 kW NG, 16 kW
LP, V-twin GT-990 Engine

 OPERATION AND MAINTENANCE

It is the operator's responsibility to perform all safety
checks, to make sure that all maintenance for safe
operation is performed promptly, and to have the
equipment checked periodically by an Authorized
Dealer. Normal maintenance service and replacement
of parts are the responsibility of the owner/operator
and, as such, are not considered defects in materials
or workmanship within the terms of the warranty.
Individual operating habits and usage contribute to
the need for maintenance service.
Proper maintenance and care of the generator ensures

Proper maintenance and care of the generator ensures
a minimum number of problems and keep operating
expenses at a minimum. See an Authorized Dealer
for service aids and accessories.

HOW TO OBTAIN SERVICE

When the generator requires servicing or repairs,
contact an Authorized Dealer for assistance. Service
technicians are factory-trained and are capable of
handling all service needs.

AUTHORIZED
DEALER LOCATION
To locate the nearest AUTHORIZED

When contacting an Authorized Dealer about parts
and service, always supply the complete model number and serial number of the unit as given on its data
decal, which is located on the generator. See section
"The Generator" for decal location.

To locate the nearest AUTHORIZED
DEALER, please call this number:
1-800-333-1322

Model No. \_\_\_\_\_\_\_\_\_\_\_\_ Serial No. \_\_\_\_\_\_\_\_\_\_\_\_\_\_

1-800-333-1322

DEALER LOCATION INFORMATION
CAN BE OBTAINED AT THIS NUMBER or visit
[www.guardiangenerators.com](http://www.guardiangenerators.com/).

[www.guardiangenerators.com](http://www.guardiangenerators.com/).

* * *

Introduction ... Inside Front Cover
Read This Manual Thoroughly ... IFC
Contents ... IFC
Operation and Maintenance ... IFC
How to Obtain Service ... IFC
Authorized Dealer Locator Number ... IFC

Safety Rules ... 2
Standards Index ... 3

Section 1 – General Information ... 4
1.1 Unpacking/Inspection ... 4
1.2 Protection Systems ... 4
1.3 NEC Requirement for Arc Fault Circuit Interruption Breaker for Bedrooms ... 4
1.4 The Generator ... 5
1.5 Specifications ... 6
1.6 System Set LED ... 7
1.7 Fuel Requirements and Recommendations ... 7
1.8 Fuel Consumption ... 7
1.9 Reconfiguring the Fuel System ... 8
1.10 Location ... 9
1.11 Battery Requirements ... 10
1.12 Battery Installation ... 10
1.13 The Battery ... 11

Section 2 – Post Installation Start-up and Adjustments ... 12
2.1 Before Initial Startup

### Section 3 – Operation .....15

3.1 Using the AUTO/OFF/MANUAL Switch .....15
3.2 Automatic Transfer Operation.....16
3.3 Sequence of Automatic Operation .....16
3.4 Manual Transfer Operation.....16
3.5 Setting the Exercise Timer .....17
3.6 Protection Systems.....18

### Section 4 – Maintenance.....19

4.1 Fuses.....19
4.2 Checking the Engine Oil Level.....19
4.3 Changing the Engine Oil.....20
4.4 Changing the Engine Air Cleaner.....21
4.5 Spark Plug(s) .....21
4.6 Battery Maintenance.....22
4.7 Adjusting GH-410/GT-530/990 Valve Clearance.....22
4.8 Cooling System .....23
4.9 Attention After Submersion.....23
4.10 Corrosion Protection.....24
4.11 Out of Service Procedure.....24
4.12 Service Schedule .....25

* * *

Air-cooled Generators

SAVE THESE INSTRUCTIONS – The manufacturer suggests that these rules for safe operation
_be copied and posted near the unit’s installation site. Safety should be stressed to all opera-_
tors and potential operators of this equipment.

• WARNING:

• The engine exhaust from this product
contains chemicals known to the state
of California to cause cancer, birth
defects or other reproductive harm.

• WARNING:

• This product contains or emits chemicals
known to the state of California to cause
cancer, birth defects or other reproductive harm.

The manufacturer cannot anticipate every possible
circumstance that might involve a hazard. The warnings in this manual, and on tags and decals affixed
to the unit are, therefore, not all-inclusive. If using
a procedure, work method or operating technique
the manufacturer does not specifically recommend,
ensure that it is safe for others. Also make sure the
procedure, work method or operating technique utilized does not render the generator unsafe.

DANGER

Despite the safe design of this generator,
\*
operating this equipment imprudently, neglecting
its maintenance or being careless can cause
possible injury or death. Permit only responsible
and capable persons to operate or maintain this
equipment.
Potentially lethal voltages are generated by
+

- GENERAL HAZARDS \*

• For safety reasons, the manufacturer recommends
that the installation, initial start-up and maintenance of this equipment is carried out by an
Authorized Dealer.
• The engine exhaust fumes contain carbon monox-

• The engine exhaust fumes contain carbon monoxide, which can be DEADLY. This dangerous gas, if
breathed in sufficient concentrations, can cause
unconsciousness or even death. This exhaust
system must be installed properly, in strict compliance with applicable codes and standards.
Following installation, do nothing that might render the system unsafe or in noncompliance with
such codes and standards.
• Keep hands, feet, clothing, etc., away from drive

• Keep hands, feet, clothing, etc., away from drive
belts, fans, and other moving or hot parts. Never
remove any drive belt or fan guard while the unit
is operating.
• Adequate, unobstructed flow of cooling and venti-

• Adequate, unobstructed flow of cooling and ventilating air is critical to correct generator operation.
Do not alter the installation or permit even partial
blockage of ventilation provisions, as this can seriously affect safe operation of the generator. The
generator MUST be installed outdoors.
• When working on this equipment, remain alert

• Inspect the generator regularly, and contact the
nearest Authorized Dealer for parts needing repair
or replacement.
• Before performing any maintenance on the gen-

• Before performing any maintenance on the generator, disconnect its battery cables to prevent
accidental start up. Disconnect the cable from the
battery post indicated by a NEGATIVE, NEG or
(–) first, then remove the POSITIVE, POS or (+)
cable. When reconnecting the cables, connect the
POSITIVE cable first, the NEGATIVE cable last.
• Never use the generator or any of its parts as a

* * *

ELECTRICAL HAZARDS

• All generators covered by this manual produce
dangerous electrical voltages and can cause fatal
electrical shock. Utility power delivers extremely
high and dangerous voltages to the transfer switch
as does the standby generator when it is in operation. Avoid contact with bare wires, terminals,
connections, etc., while the unit is running. Ensure
all appropriate covers, guards and barriers are in
place, secured and/or locked before operating the
generator. If work must be done around an operating unit, stand on an insulated, dry surface to
reduce shock hazard.
• Do not handle any kind of electrical device while

MAY RESULT.
• The National Electrical Code (NEC) requires the
frame and external electrically conductive parts of
the generator to be connected to an approved earth
ground. Local electrical codes also may require
proper grounding of the generator electrical system.
• After installing this home standby electrical sys-

proper grounding of the generator electrical system.
• After installing this home standby electrical system, the generator may crank and start at any
time without warning. When this occurs, load circuits are transferred to the STANDBY (generator)
power source. To prevent possible injury if such a
start and transfer occur, always set the generator’s
AUTO/OFF/MANUAL switch to its OFF position
before working on equipment and remove the 15A
fuse from the generator control panel.
• In case of accident caused by electric shock, imme-

• In case of accident caused by electric shock, immediately shut down the source of electrical power. If
this is not possible, attempt to free the victim from
the live conductor. AVOID DIRECT CONTACT WITH
THE VICTIM. Use a nonconducting implement,
such as a dry rope or board, to free the victim from
the live conductor. If the victim is unconscious,
apply first aid and get immediate medical help.
• Never wear jewelry when working on this equip-

$ FIRE HAZARDS $

• Never wear jewelry when working on this equipment. Jewelry can conduct electricity resulting in
electric shock, or may get caught in moving components causing injury.
$ FIRE HAZARDS $

• Keep a fire extinguisher near the generator at all
times. Extinguishers rated “ABC” by the National
Fire Protection Association are appropriate for
use on the standby electric system. Keep the extinguisher properly charged and be familiar with its
use. Consult the local fire department with any
questions pertaining to fire extinguishers.

$ EXPLOSION HAZARDS $

• Do not smoke around the generator. Wipe up any
fuel or oil spills immediately. Ensure that no combustible materials are left in the generator compartment, or on or near the generator, as FIRE or
EXPLOSION may result. Keep the area surrounding the generator clean and free from debris.
• Gaseous fluids such as natural gas and liquid pro-

ing the generator clean and free from debris.
• Gaseous fluids such as natural gas and liquid propane (LP) gas are extremely EXPLOSIVE. Install
the fuel supply system according to applicable
fuel-gas codes. Before placing the home standby
electric system into service, fuel system lines must
be properly purged and leak tested according to
applicable code. After installation, inspect the fuel
system periodically for leaks. No leakage is permitted.

STANDARDS INDEX

01. NFPA No. 37, STATIONARY COMBUSTION
    ENGINES AND GAS TURBINES, available from
    the National Fire Protection Association, 470
    Atlantic Avenue, Boston, MA 02210.

02. NFPA No. 76A, ESSENTIAL ELECTRICAL

03. NFPA No. 76A, ESSENTIAL ELECTRICAL
    SYSTEMS FOR HEALTH CARE FACILITIES,
    available same as Item 1.

04. NFPA No. 54, NATIONAL FUEL GAS CODE,

05. NFPA No. 54, NATIONAL FUEL GAS CODE,
    available same as Item 1.

06. NFPA No. 58, AMERICAN NATIONAL STANDARD

07. NFPA No. 58, AMERICAN NATIONAL STANDARD
    FOR STORAGE AND HANDLING OF LIQUEFIED
    PETROLEUM GAS, available same as Item 1.

08. NFPA No. 70, NFPA HANDBOOK OF NATIONAL

09. AGRICULTURAL WIRING HANDBOOK, available from the Food and Energy Council, 909
    University Avenue, Columbia, MO 65201.

10. ASAE EP-3634, INSTALLATION AND

11. NFPA No. 30, FLAMMABLE AND COMBUSTIBLE
    LIQUIDS CODE, available same as Item 1.


* * *

DANGER

Only qualified electricians or contractors should
\*
attempt such installations, which must comply
strictly with applicable codes, standards and regulations.
1.1 UNPACKING/INSPECTION

1.1 UNPACKING/INSPECTION
After unpacking, carefully inspect the contents for

1.1 UNPACKING/INSPECTION
After unpacking, carefully inspect the contents for
damage.

• This standby generator set is ready for installation with a factory supplied and pre-mounted base
pad and has a weather protective enclosure that is
intended for outdoor installation only.
• This UL listed standby generator set is packaged

intended for outdoor installation only.
• This UL listed standby generator set is packaged
with an automatic transfer switch with built in
load center. The combination transfer switch and
load center is pre-wired with a two foot and 30 foot
conduit. Circuit breakers for emergency circuit
connections are included (if equipped).
• This UL listed, 2-pole switch is rated at 100 AC

WARNING

If this generator is used to power electrical load
+
circuits normally powered by a utility power
source, it is required by code to install a transfer
switch. The transfer switch must effectively isolate
the electrical system from the utility distribution
system when the generator is operating (NEC 700,
701 & 702). Failure to isolate an electrical system
by such means will result in damage to the generator and also may result in injury or death to
utility power workers due to backfeed of electrical
energy.
If any loss or damage is noted at time of delivery, have

1. Low Oil Pressure Sensor 4. Overspeed
2. High Temperature Sensor 5. RPM Sensor

Unlike an automobile engine, the generator may have
to run for long periods of time with no operator present to monitor engine conditions. For that reason, the
engine is equipped with the following systems that
protect it against potentially damaging conditions:

1. Low Oil Pressure Sensor 4. Overspeed

1.2 PROTECTION SYSTEMS
Unlike an automobile engine, the generator may have

If any loss or damage is noted at time of delivery, have
the person(s) making the delivery note all damage
on the freight bill or affix their signature under the
consignor's memo of loss or damage.

If a loss or damage is noted after delivery, separate
the damaged materials and contact the carrier for
claim procedures.
“Concealed damage” is understood to mean damage

There are LED readouts on the control panel to notify
personnel that one of these faults has occurred.
There is also a System Set LED that is lit when all
of the conditions described in section "System Set
LED" are true. (See the "Protection Systems" section
for details.)

1.3 NEC REQUIREMENT FOR ARC
FAULT CIRCUIT INTERRUPTION
BREAKER FOR BEDROOMS
In 2001, the National Electric Code (NEC) intro-

In 2001, the National Electric Code (NEC) introduced a requirement for new construction. This new
requirement indicates the need for Arc Fault Circuit
Interrupters to be used to protect the complete
branch circuit that feeds a dwelling bedroom. The
actual NEC requirement is indicated below.

 1.3.1 SECTION 210.12 ARC FAULT CIRCUIT
INTERRUPTER PROTECTION

1. Definition: An arc fault circuit interrupter is a
   device intended to provide protection from the
   effects of arc faults by recognizing characteristics
   unique to arcing and by functioning to de-energize the circuit when an arc fault is detected.
2. Dwelling Unit Bedrooms: All branch circuits that

gize the circuit when an arc fault is detected.
2\. Dwelling Unit Bedrooms: All branch circuits that
supply 125 volt, single-phase, 15 and 20 ampere
outlets installed in dwelling unit bedrooms shall
be protected by an arc fault circuit interrupter
listed to provide protection of the entire branch
circuit.
Section 210.12 requires that AFCI protection be

It is most important that breakers only be switched
like for like. For instance, if replacing a 15A breaker,
it MUST be replaced with a 15A AFCI breaker.
Likewise, a 20A breaker MUST be replaced with a
20A AFCI.
These AFCI breakers are available at the nearest

These AFCI breakers are available at the nearest
hardware store.

| Siemens Item # | Description |
| --- | --- |
| Q115AF | 15A Single Pole AFCI |
| Q120AF | 20A Single Pole AFCI |

* * *

1.4 THE GENERATOR

Figure 1.1 – 7kW, Single Cylinder GH-410 Engine

Figure 1.2 – 10kW, V-twin GT-530 Engine

Figure 1.3 – 13kW and 16kW, V-twin GT-990 Engine

* * *

1.5 SPECIFICATIONS

1.5.1 GENERATOR

\| Model \| 05240&05280 \| 05241&05281 \| 05242&05282 \| 05243&05244

05283&05284 \|
\| \-\-\- \| \-\-\- \| \-\-\- \| \-\-\- \| \-\-\- \|
\| Rated Max. Continuous Power Capacity(Watts\*) \| 6,000 NG/7,000 LP \| 9,000 NG/10,000 LP \| 13,000 NG/13,000 LP \| 15,000 NG/16,000 LP \|
\| Rated Voltage \| 120/240 \| 120/240 \| 120/240 \| 120/240 \|

Load Current (Amps)
120 Volts\*\*

| 120 Volts\*\* | 50.0 NG/58.3 LP | 75.0 NG/83.3 LP | 108.3 NG/108.3 LP | 125 NG/133.3 LP |
| --- | --- | --- | --- | --- |
| 240 Volts | 25.0 NG/29.2 LP | 37.5 NG/41.7 LP | 54.1 NG/54.1 LP | 62.5 NG/66.6 LP |
| Main Line Circuit Breaker | 30 Amp | 45 Amp | 55 Amp | 65 Amp |
| Circuits\*\*\* |  |  |  |  |
| 50A, 240V | - | - | - | 1 |
| 40A, 240V | - | - | 1 | 1 |
| 30A, 240V | 1 | 1 | 1 | - |
| 20A, 240V | - | 1 | - | 1 |
| 20A, 120V | 1 | 3 | 3 | 5 |
| 15A, 120V | 5 | 3 | 5 | 5 |
| Phase | 1 | 1 | 1 | 1 |
| Number of Rotor Poles | 2 | 2 | 2 | 2 |
| Rated AC Frequency | 60 Hz | 60 Hz | 60 Hz | 60 Hz |
| Power Factor | 1 | 1 | 1 | 1 |
| Recommended Air Filter | Part # 0C8127 | Part # 0E9581 | Part # 0C8127 | Part # 0C8127 |
| Battery Requirement | Group 2612 Volts and350 Cold-crankingAmperes Minimum | Group 2612 Volts and525 Cold-crankingAmperes Minimum | Group 2612 Volts and525 Cold-crankingAmperes Minimum | Group 2612 Volts and525 Cold-crankingAmperes Minimum |
| Battery Warming Blanket0F6148DSRV |  |  |  |  |

0F6148DSRV
375 Pounds 425.5 Pounds

| Weight(Unit Only) | 336 Pounds | 375 Pounds | 425.5 Pounds | 445&414 Pounds |
| --- | --- | --- | --- | --- |
| Enclosure |  |  |  | Steel/Aluminum |
| Normal Operating Range-20°F(-28.8℃)to104°F(40℃) |  |  |  |  |

- Maximum wattage and current are subject to and limited by such factors as fuel Btu content, ambient temperature, altitude, engine power and condition, etc. Maximum power

decreases about 3.5 percent for each 1,000 feet above sea level; and also will decrease about 1 percent for each 6° C (10° F) above 16° C (60° F) ambient temperature.
\\*\\* Load current values shown for 120 volts are maximum TOTAL values for two separate circuits. The maximum current in each circuit must not exceed the value stated for 240
volts.

decreases about 3.5 percent for each 1,000 feet above sea level; and also will decrease about 1 percent for each 6° C (10° F) above 16° C (60° F) ambient temperature.
\\*\\* Load current values shown for 120 volts are maximum TOTAL values for two separate circuits. The maximum current in each circuit must not exceed the value stated for 240
volts.
\\*\\*\\* Circuits to be moved must be protected by same size breaker. For example, a 15 amp circuit in main panel must be a 15 amp circuit in transfer switch.

$$
6 ^ {\\circ} \\mathrm {C} (1 0 ^ {\\circ} \\mathrm {F})
$$

| Model | 05240&05280 | 05241&05281 | 05242&05282 | 05243&0524405283&05284 |
| --- | --- | --- | --- | --- |
| Type of Engine | GH-410 | GT-530 | GT-990 | GT-990 |
| Number of Cylinders | 1 | 2 | 2 | 2 |
| Rated Horsepower | 14.5@3,600rpm | 18@3,600rpm | 30@3,600rpm | 30@3,600rpm |
| Displacement | 410cc | 530cc | 992cc | 992cc |
| Cylinder Block | Aluminum w/CastIron Sleeve | Aluminum w/CastIron Sleeve | Aluminum w/CastIron Sleeve | Aluminum w/CastIron Sleeve |
| Valve Arrangement | Overhead Valves | Overhead Valves | Overhead Valves | Overhead Valves |
| Ignition System | Solid-state w/Magneto | Solid-state w/Magneto | Solid-state w/Magneto | Solid-state w/Magneto |
| Recommended Spark Plug | RC14YC | BPR6HS | RC12YC | RC12YC |
| Spark Plug Gap | 0.76mm(0.030inch) | 0.76mm(0.030inch) | 1.02mm(0.040inch) | 1.02mm(0.040inch) |
| Compression Ratio | 8.6:1 | 9.5:1 | 9.5:1 | 9.5:1 |
| Starter | 12Vdc | 12Vdc | 12Vdc | 12Vdc |
| Oil Capacity Including Filter | Approx.1.5Qts | Approx.1.7Qts | Approx.1.7Qts | Approx.1.7Qts |
| Recommended Oil Filter | Part #070185B | Part #070185B | Part #070185B | Part #070185B |
| Recommended Air Filter | Part #0C8127 | Part #0E9581 | Part #0C8127 | Part #0C8127 |
| Operating RPM | 3,600 | 3,600 | 3,600 | 3,600 |

1.5.2 ENGINE

* * *

1.6 SYSTEM SET LED
The “System Set” LED is lit when all of the following

1.6 SYSTEM SET LED
The “System Set” LED is lit when all of the following
conditions are true:

2. The utility voltage being supplied to the unit is
   being sensed by the PCB. If the utility sense voltage is not connected to the unit or if it is below
   approximately 150-160 volts AC, then the system
   set light will flash rapidly. This indicates that if
   the AUTO/OFF/ MANUAL switch is placed in the
   Auto position, the generator will start.

3. No alarms are present, for example, low oil pres-

4. No alarms are present, for example, low oil pressure, high temperature, etc.


1.7 FUEL REQUIREMENTS
AND RECOMMENDATIONS
With LP gas, use only the vapor withdrawal sys-

With LP gas, use only the vapor withdrawal system. This type of system uses the vapors formed
above the liquid fuel in the storage tank.

The engine has been fitted with a fuel carburetion
system that meets the specifications of the 1997
California Air Resources Board for tamper-proof dual
fuel systems. The unit will run on natural gas or LP
gas, but it has been factory set to run on natural gas.
Should the primary fuel need to be changed to LP
gas, the fuel system needs to be reconfigured. See the
Reconfiguring the Fuel System section for instructions on reconfiguration of the fuel system.
Recommended fuels should have a Btu content of at

The engine has been fitted with a fuel carburetion
system that meets the specifications of the 1997
California Air Resources Board for tamper-proof dual
fuel systems. The unit will run on natural gas or LP
gas, but it has been factory set to run on natural gas.
Should the primary fuel need to be changed to LP
gas, the fuel system needs to be reconfigured. See the
Reconfiguring the Fuel System section for instructions on reconfiguration of the fuel system.
Recommended fuels should have a Btu content of at

Recommended fuels should have a Btu content of at
least 1,000 Btus per cubic foot for natural gas; or at
least 2,520 Btus per cubic foot for LP gas. Ask the
fuel supplier for the Btu content of the fuel.
Required fuel pressure for natural gas is 5 inches

Required fuel pressure for natural gas is 5 inches
to 7 inches water column (0.18 to 0.25 psi); and
for liquid propane, 10 inches to 12 inches of water
column (0.36 to 0.43 psi).
NOTE:

NOTE:

Special considerations should be given when installing the unit where local conditions include flooding,
tornados, hurricanes, earthquakes and unstable
ground for the flexibility and strength of piping and
their connections.

Use an approved pipe sealant or joint compound on
all threaded fitting.
All installed gaseous fuel piping must be purged and

All installed gaseous fuel piping must be purged and
leak tested prior to initial start-up in accordance with
local codes, standards and regulations.

1.8 FUEL CONSUMPTION

| Unit | Nat. Gas(\*) |  | LP Vapor(\*\*) |  |
| --- | --- | --- | --- | --- |
|  | 1/2 Load | Full Load | 1/2 Load | Full Load |
| 6/7 kW | 66 | 119 | 0.82/30 | 1.47/54 |
| 9/10 kW | 102 | 156 | 1.25/46 | 1.93/70 |
| 13/13 kW | 156 | 220 | 1.55/57 | 2.18/80 |
| 15/16 kW | 173 | 245 | 1.59/59 | 2.51/92 |

\*Natural gas is in cubic feet per hour.
\*\*LP is in gallons per hour/cubic feet per hour.

\*Natural gas is in cubic feet per hour.
\*\*LP is in gallons per hour/cubic feet per hour.
\\*\\*\\* Values given are approximate.

\*\*LP is in gallons per hour/cubic feet per hour.
\\*\\*\\* Values given are approximate.

 1.8.1 BTU FLOW REQUIREMENTS -
NATURAL GAS

BTU flow required for each unit based on 1000 BTU
per cubic foot.

• 6kW — 119,000 BTU/Hour
• 9kW — 156,000 BTU/Hour

• 9kW — 156,000 BTU/Hour
• 13kW — 220,000 BTU/Hour

• 9kW — 156,000 BTU/Hour
• 13kW — 220,000 BTU/Hour
• 15kW — 245,000 BTU/Hour

• 15kW — 245,000 BTU/Hour

DANGER

NOTE:

Gaseous fuels such as natural gas and liquid
$
propane (LP) gas are highly explosive. Even the
slightest spark can ignite such fuels and cause
an explosion. No leakage of fuel is permitted.
Natural gas, which is lighter than air, tends to
collect in high areas. LP gas is heavier than air
and tends to settle in low areas.
NOTE:

Gaseous fuels such as natural gas and liquid
propane (LP) gas are highly explosive. Even the
slightest spark can ignite such fuels and cause
an explosion. No leakage of fuel is permitted.
Natural gas, which is lighter than air, tends to
collect in high areas. LP gas is heavier than air
and tends to settle in low areas.

* * *

1.9 RECONFIGURING THE
FUEL SYSTEM

 1.9.1 7 KW, 410CC ENGINE

To reconfigure the fuel system from NG to LP, follow
these steps (Figure 1.4):

NOTE:

01. Turn off the main gas supply (if connected).

02. Open the roof and remove the door.

03. Remove the battery (if installed).

04. Disconnect wire #0 and wire #14 from the gas

05. Open the roof and remove the door.

06. Remove the battery (if installed).

07. Disconnect wire #0 and wire #14 from the gas
    solenoid on top of the demand regulator.

08. Remove the carburetor fuel hose from the outlet

09. Remove the carburetor fuel hose from the outlet
    port of the demand regulator.

10. Remove the demand regulator by removing the

11. Remove the demand regulator by removing the
    fastener that retains the regulator mounting
    bracket.

12. Remove the square headed steel pipe plug from

13. Remove the square headed steel pipe plug from
    outlet port #1 and the brass hose barb fitting
    from outlet port #2.

14. Refit the brass hose barb fitting to outlet port #1

15. Refit the brass hose barb fitting to outlet port #1
    and the square headed steel pipe plug to outlet
    port #2.


NOTE:

Use an approved pipe sealant or joint compound
on all threaded fittings to reduce the possibility
of leakage.

9. Reverse procedure steps 1-6 to reinstall demand
   regulator.

10. Take the plastic plug supplied in the poly-bag

11. Take the plastic plug supplied in the poly-bag
   with the generator and press it into the 3/4” hole
   on the bottom of the air cleaner base (Figure
   4.6).

12. Reverse the procedure to convert back to natural

13. Check for gas leakage at the pipe plug, hose connection and fittings.

14. Reverse the procedure to convert back to natural
   gas.

15. Check for gas leakage at the pipe plug, hose con-


 1.9.2 10, 13 AND 16KW, V-TWIN ENGINES

To reconfigure the fuel system from NG to LP, follow
these steps:
NOTE:

NOTE:

The primary regulator for the propane supply is
NOT INCLUDED with the generator. A fuel pressure of 10 to 12 inches of water column (0.36 to
0.43 psi) to the fuel inlet of the generator MUST
BE SUPPLIED.

2. For 10kW units: Loosen clamp and slide back
   the air inlet hose.
   • Slide fuel selector on carburetor out towards the

3. Open the roof.

4. For 10kW units: Loosen clamp and slide back


• Slide fuel selector on carburetor out towards the
back of the enclosure (Figures 1.5 and 1.6).
• Return the inlet hose and tighten clamp secure-

• Return the inlet hose and tighten clamp securely.
For 13 and 16kW units: remove the air cleaner

For 13 and 16kW units: remove the air cleaner
cover.

• Slide the selector lever out towards the back of
the enclosure (Figures 1.7 and 1.8).
• Return the air cleaner cover and tighten the two

the enclosure (Figures 1.7 and 1.8).
• Return the air cleaner cover and tighten the two
thumb screws.
3\. Close the roof.

4. Reverse the procedure to convert back to natural
   gas.

* * *

Figure 1.5 - 10kW, GT-530 (Inlet Hose Slid Back)

Figure 1.6 - 10kW, GT-530 (Inlet Hose Slid Back)

Figure 1.8 - 13/16kW, GT-990 (Airbox Cover
Removed)

Figure 1.7 - 13/16kW, GT-990 (Airbox Cover
Removed)

1.10 LOCATION

1.10.1 GENERATOR

Install the generator set, in its protective enclosure,
outdoors, where adequate cooling and ventilating air
is always available (Figure 1.9). Consider these factors:

• The installation of the generator must comply
strictly with NFPA 37, NFPA 54, NFPA 58, and
NFPA 70 standards.
• Install the unit where air inlet and outlet open-

• Install the unit where air inlet and outlet openings will not become obstructed by leaves, grass,
snow, etc.. If prevailing winds will cause blowing
or drifting, consider using a windbreak to protect
the unit.
• Install the generator on high ground where water

• Install the generator on high ground where water
levels will not rise and endanger it.
• Allow sufficient room on all sides of the generator

• Install the unit where services will not be affected
or obstructed, including concealed, underground
or covered services such as electrical, fuel, phone,
air conditioning or irrigation.
• Where strong prevailing winds blow from one

* * *

• Install the generator as close as possible to the fuel
supply, to reduce the length of piping.
• Install the generator as close as possible to the

• Install the generator as close as possible to the
transfer switch. REMEMBER THAT LAWS OR
CODES MAY REGULATE THE DISTANCE AND
LOCATION.
• The genset must be installed on a level surface.

• The genset must be installed on a level surface.
The base frame must be level within two (2) inches
all around.
• The generator is typically placed on pea gravel or

• The generator is typically placed on pea gravel or
crushed stone. Check local codes if a concrete slab
is required. If a concrete base slab is required, all
federal, state and local codes should be followed.
Special attention should be given to the concrete
base slab which should exceed the length and
width of the generator by a minimum of six (6)
inches (0.152 meters) on all sides.

Figure 1.9 – Generator Clearances

• Operate the generator outdoors ONLY.
• Keep exhaust gases from entering a confined area
through windows, doors, ventilation or other
openings (Figure 1.9).

 1.10.2 TRANSFER SWITCH

WARNING

The engine exhaust fumes contain carbon mon-
\*
oxide, which can be DEADLY. This dangerous
gas, if breathed in sufficient concentrations,
can cause unconsciousness or even death. This
exhaust system must be installed properly, in
strict compliance with applicable codes and standards. Following installation, do nothing that
might render the system unsafe or in noncompliance with such codes and standards.
• Operate the generator outdoors ONLY.

1.10.2.1 7, 10, 13, and 16 kW Units (if equipped)
The transfer switch shipped with this generator is

• Install the transfer switch indoors on a firm, sturdy
supporting structure.
• To prevent switch distortion, level the switch if

• To prevent switch distortion, level the switch if
necessary. This can be done by placing washers
between the switch enclosure and mounting surface.
• Never install the switch where water or any corro-

• Never install the switch where water or any corrosive substance might drip onto the enclosure.
• Protect the switch at all times against excessive

• Protect the switch at all times against excessive
moisture, dust, dirt, lint, construction grit and
corrosive vapors.

WARNING

If the AUTO/OFF/MANUAL switch is not set to its
$
OFF position, the generator can crank and start
as soon as the battery cables are connected. If
the utility power supply is not turned off, sparking can occur at the battery posts and cause an
explosion.

See the Specifications section for correct battery size
and rating.

1.12 BATTERY INSTALLATION
Fill the battery with the proper electrolyte fluid if
necessary and have the battery fully charged before
installing it.
Before installing and connecting the battery, complete

1.12 BATTERY INSTALLATION
Fill the battery with the proper electrolyte fluid if

Before installing and connecting the battery, complete
the following steps:

1. Set the generator's AUTO/OFF/MANUAL switch to
   OFF.

2. Turn off utility power supply to the transfer

3. Turn off utility power supply to the transfer
   switch.

4. Remove the 15A fuse from the generator control

5. Remove the 15A fuse from the generator control
   panel.
   Battery cables were factory connected at the genera-


NOTE:

Battery cables were factory connected at the generator (Figure 1.10). Connect cables to battery posts as
follows:

4. Connect the red battery cable (from starter contactor) to the battery post indicated by a positive,
   POS or (+).
5. Connect the black battery cable (from frame

* * *

Figure 1.10 – Battery Cable Connections

NOTE:
In areas where temperatures regularly fall below

In areas where temperatures regularly fall below
10 F (-12 C) it is recommended that a pad type
battery heater be installed to aid in cold climate
starting (see Specifications).

$$
1 0 ^ {\\circ} \\mathrm {F} (- 1 2 ^ {\\circ} \\mathrm {C})
$$

NOTE:

1.13 THE BATTERY

Do not dispose of the battery in a fire. The
$
battery is capable of exploding.

1.13 THE BATTERY
DANGER

A battery presents a risk of electrical shock
+
and high short circuit current. The following precautions are to be observed when working on
batteries:
• Remove the 15A fuse from the generator control

• Remove watches, rings or other metal objects;
• Use tools with insulated handles;
• Wear rubber gloves and boots;

• Wear rubber gloves and boots;
• Do not lay tools or metal parts on top of the
battery; and
• Disconnect charging source prior to connecting or

WARNING

Do not open or mutilate the battery. Released
\*
electrolyte has been known to be harmful to the
skin and eyes, and to be toxic.

The electrolyte is a dilute sulfuric acid that is
\*
harmful to the skin and eyes. It is electrically
conductive and corrosive.

The following procedures are to be observed:
• Wear full eye protection and protective clothing;

• Wear full eye protection and protective clothing;
• Where electrolyte contacts the skin, wash it off

• Wear full eye protection and protective clothing;
• Where electrolyte contacts the skin, wash it off
immediately with water;
• Where electrolyte contacts the eyes, flush thor-

immediately with water;
• Where electrolyte contacts the eyes, flush thoroughly and immediately with water and seek
medical attention; and
• Spilled electrolyte is to be washed down with an

• Spilled electrolyte is to be washed down with an
acid neutralizing agent. A common practice is to
use a solution of 1 pound (500 grams) bicarbonate
of soda to 1 gallon (4 liters) of water. The bicarbonate of soda solution is to be added until the
evidence of reaction (foaming) has ceased. The
resulting liquid is to be flushed with water and the
area dried.

Lead-acid batteries present a risk of fire because
!
they generate hydrogen gas. The following
procedures are to be followed:
• DO NOT SMOKE when near the battery;

• DO NOT SMOKE when near the battery;
• DO NOT cause flame or spark in battery area; and

• DO NOT cause flame or spark in battery area; and
• Discharge static electricity from body before touching the battery by first touching a grounded metal
surface.
Be sure the AUTO/OFF/MANUAL switch is set to
\*

Be sure the AUTO/OFF/MANUAL switch is set to
\*
the OFF position before connecting the battery
cables. If the switch is set to AUTO or MANUAL,
the generator can crank and start as soon as the
battery cables are connected.

Be sure the utility power supply is turned off
$
and the 15A fuse is removed from the generator
control panel, or sparking may occur at the battery posts as the cables are attached and cause
an explosion.
Servicing of the battery is to be performed or super-

See the Specifications section for the correct size
and rating when replacing the battery. When using a
maintenance-free battery, it is not necessary to check
the specific gravity or electrolyte level. Have these
procedures performed at the intervals specified in
the “Service Schedule.” A negative ground system is
used. Battery connections are shown on the wiring
diagrams. Make sure the battery is correctly connected and terminals are tight. Observe battery polarity
when connecting the battery to the generator set.

Servicing of the battery is to be performed or supervised by personnel knowledgeable of batteries and
the required precautions. Keep unauthorized personnel away from batteries.
See the Specifications section for the correct size

* * *

2.1 BEFORE INITIAL START-UP
NOTE:

These units have been run and tested at the factory prior to being shipped and do not require any
type of break-in.

Before starting, complete the following:

1. Set the generator’s main circuit breaker to its
   OFF (or OPEN) position.

2. Set the generator's AUTO/OFF/MANUAL switch to

3. Set the generator's AUTO/OFF/MANUAL switch to
   the OFF position.

4. Turn OFF all breakers on the load center of the

5. Turn OFF all breakers on the load center of the
   transfer box (T1 and T2).

6. Turn OFF all loads connected to the transfer

7. Check the engine crankcase oil level and, if necessary, fill to the dipstick FULL mark with the recommended oil. Do not fill above the FULL mark.

8. Check the fuel supply. Gaseous fuel lines must

9. Check the fuel supply. Gaseous fuel lines must
   have been properly purged and leak tested in
   accordance with applicable fuel-gas codes. All
   fuel shutoff valves in the fuel supply lines must
   be open.


CAUTION

Never operate the engine with the oil level
\*
below the “Add” mark on the dipstick. Doing
this could damage the engine.

2.2 CHECK TRANSFER SWITCH
OPERATION
Refer to the "Manual Transfer Operation" section, of

2.3 ELECTRICAL CHECKS
Complete electrical checks as follows:

OPERATION
Refer to the "Manual Transfer Operation" section, of
the owner’s manual for procedures.

Do not attempt manual transfer switch opera-
+
tion until all power voltage supplies to the
transfer switch have been positively turned off.
Failure to turn off all power voltage supplies
will result in extremely hazardous and possibly
fatal electrical shock.
2.3 ELECTRICAL CHECKS

2. Set the generator's AUTO/OFF/MANUAL switch to
   the OFF position.
3. Turn OFF all breakers on the load center of the

DANGER

DANGER

The transfer switch is now electrically “hot.”
+
Contact with “hot” parts will result in extremely
hazardous and possibly fatal electrical shock.
Proceed with caution.
5\. Use an accurate AC voltmeter to check utility

5. Use an accurate AC voltmeter to check utility
   power source voltage across transfer switch terminals N1 and N2. Nominal line-to-line voltage
   should be 240 volts AC.

6. Check utility power source voltage across termi-

7. Check utility power source voltage across terminals N1 and the transfer switch neutral lug; then
   across terminal N2 and neutral. Nominal line-toneutral voltage should be 120 volts AC.

8. When certain that utility supply voltage is compat-

9. When certain that utility supply voltage is compatible with transfer switch and load circuit ratings,
   turn OFF the utility power supply to the transfer
   switch.

10. On the generator panel, set the AUTO/OFF/

11. Let the engine warm up for about five minutes to
   allow internal temperatures to stabilize. Then, set
   the generator’s main circuit breaker to its ON (or
   CLOSED) position.


DANGER

Proceed with caution! Generator power voltage
+
is now supplied to the transfer switch. Contact
with live transfer switch parts will result in dangerous and possibly fatal electrical shock.
10\. Connect an accurate AC voltmeter and a frequen-

10. Connect an accurate AC voltmeter and a frequency meter across transfer switch terminal lugs E1
    and E2. 7kW voltage should be 242-252 volts at
    a frequency of 61-63 Hertz. 10, 13, and 16kW
    voltage should be 247-249 volts at a frequency of
    57.5-59.5 Hertz.

11. Connect the AC voltmeter test leads across ter-

12. Set the generator’s main circuit breaker to its
    OFF (or OPEN) position. Let the engine run at noload for a few minutes to stabilize internal engine
    generator temperatures.

13. Set the generator's AUTO/OFF/MANUAL switch to

14. Connect the AC voltmeter test leads across terminal lugs E1 and neutral; then across E2 and
    neutral. In both cases, voltage reading should be
    121-126 volts AC (7kW), and 125-126 volts AC
    (10, 13 and 16kW).

15. Set the generator’s main circuit breaker to its
    OFF (or OPEN) position. Let the engine run at no-

16. Set the generator's AUTO/OFF/MANUAL switch to
    OFF. The engine should shut down.
    NOTE:


NOTE:

It is important not to proceed until certain that
generator AC voltage and frequency are correct
and within the stated limits. Generally, if both AC
frequency and voltage are high or low, the engine
governor requires adjustment\* (\*GH410 only). If
frequency is correct, but voltage is high or low, the
generators voltage regulator requires adjustment.

* * *

2.4 GENERATOR TESTS UNDER LOAD
To test the generator set with electrical loads applied,

2.4 GENERATOR TESTS UNDER LOAD
To test the generator set with electrical loads applied,
proceed as follows:

1. Set generator’s main circuit breaker to its OFF
   (or OPEN) position.

2. Turn OFF all breakers on the load center of the

3. Turn OFF all breakers on the load center of the
   transfer box (T1 and T2).

4. Set the generator's AUTO/OFF/MANUAL switch to

5. Set the generator's AUTO/OFF/MANUAL switch to
   OFF.

6. Turn OFF the utility power supply to the transfer


WARNING

Do not attempt manual transfer switch opera-
+
tion until all power voltage supplies to the
transfer switch have been positively turned off.
Failure to turn off all power voltage supplies
will result in extremely hazardous and possibly
fatal electrical shock.
5\. Manually set the transfer switch to the STANDBY

6. Set the generator's AUTO/OFF/MANUAL switch
   to MANUAL. The engine should crank and start
   immediately.
7. Let the engine stabilize and warm up for a few

minutes.
8\. Set the generator’s main circuit breaker to its ON
(or closed) position. Loads are now powered by
the standby generator.
9\. Turn ON the load center of the transfer switch

the standby generator.
9\. Turn ON the load center of the transfer switch
(T1 and T2).
10\. Connect an accurate AC voltmeter and a frequen-

• 7kW voltage should be greater than 230 volts and
frequency should be greater than 58 Hz.
• 10, 13 & 16kW voltage should be greater than

11. Let the generator run at full rated load for 20-30
    minutes. Listen for unusual noises, vibration or
    other indications of abnormal operation. Check
    for oil leaks, evidence of overheating, etc.

12. When testing under load is complete, turn OFF

13. When testing under load is complete, turn OFF
    electrical loads.

14. Set the generator's main circuit breaker to its


2.5 CHECKING AUTOMATIC
OPERATION
To check the system for proper automatic operation,

OPERATION
To check the system for proper automatic operation,
proceed as follows:

01. Set generator’s main circuit breaker to its OFF
    (or OPEN) position.

02. Check that the AUTO/OFF/MANUAL switch is set

03. Check that the AUTO/OFF/MANUAL switch is set
    to OFF.

04. Turn OFF the utility power supply to the transfer

05. Turn OFF the utility power supply to the transfer
    switch, using means provided (such as a utility
    main line circuit breaker).

06. Manually set the transfer switch to the UTILITY

07. Turn ON the utility power supply to the transfer
    switch, using the means provided (such as a utility main line circuit breaker).

08. Set the generator's main circuit breaker to its ON

09. Set the generator's main circuit breaker to its ON
    (or CLOSED)) position.

10. Set the AUTO/OFF/MANUAL switch to AUTO. The

11. Set the AUTO/OFF/MANUAL switch to AUTO. The
    system is now ready for automatic operation.

12. Turn OFF the utility power supply to the transfer

13. Turn OFF the utility power supply to the transfer
    switch.
    With the AUTO/OFF/MANUAL switch at AUTO, the


switch.
With the AUTO/OFF/MANUAL switch at AUTO, the
engine should crank and start when the utility source
power is turned OFF after a 10 second delay. After
starting, the transfer switch should connect load circuits to the standby side after a 15 second delay. Let
the system go through its entire automatic sequence
of operation.

With the generator running and loads powered by
generator AC output, turn ON the utility power supply
to the transfer switch. The following should occur:
• After about 15 seconds, the switch should transfer

With the generator running and loads powered by
generator AC output, turn ON the utility power supply
to the transfer switch. The following should occur:
• After about 15 seconds, the switch should transfer

• After about 15 seconds, the switch should transfer
loads back to the utility power source.
• About one minute after retransfer, the engine

loads back to the utility power source.
• About one minute after retransfer, the engine
should shut down.

2.6 ADJUSTING THE FUEL REGULATOR

- 7KW (NATURAL GAS ONLY)
  NOTE:

All V-twin engine units DO NOT require a fuel regulator adjustment due to the fuel system design.

Although the generator has been factory set to provide maximum power, it may be necessary in some
areas to adjust this setting. If experiencing engine
problems at high or full load conditions, follow these
steps. It will require a frequency meter to perform
this procedure.

* * *

1. Turn off utility power to the main distribution
   panel in the house. This can be done by switching
   the service main breaker to the off or open position.

2. Allow the generator to start. Before loading the

3. Allow the generator to start. Before loading the
   generator, confirm that the No Load Frequency,
   with the roof open and door off, is set to 63-63.5
   Hz. Transfer load to emergency circuits.

4. Turn on appliances, lights, pumps, etc., that are

5. Turn on appliances, lights, pumps, etc., that are
   on the emergency circuits in an attempt to fully
   load the generator. Be cautious not to overload
   the generator. Use the following chart as a guide:


| Unit | 120 Volts | 240 Volts |
| --- | --- | --- |
| 7kW | 50.0amps | 25.0amps |

4. When 3/4 load has been achieved. Connect a frequency meter to the output lugs of the generator’s
   main line circuit breaker.

5. The fuel regulator is fitted with one adjustment

6. The fuel regulator is fitted with one adjustment
   screw. While watching the frequency meter, slowly
   turn the adjustment screw clockwise or counterclockwise until the highest frequency is read on
   the meter. Only limited adjustment is available
   because of the set pin. Under no circumstances
   should any of the pins be removed (Figure 2.1).

7. When the highest frequency is reached maximum
   power has been set. From this point turn the
   adjustment screw 1/4 turn counterclockwise. The
   regulator is now set.

8. Turn utility power to the main distribution panel


410cc Engine

7. Turn utility power to the main distribution panel
   back on. This can be done by switching the service main breaker to the on or closed position.
   Allow the generator to shut down.

WARNING

Do not make any unnecessary adjustments.
\*
Factory settings are correct for most applications. However, when making adjustments, be
careful to avoid overspeeding the engine.
If this procedure or the test equipment is not avail-

If this procedure or the test equipment is not available, locate the nearest Dealer and they can perform
the adjustments.

NOTE:

2.7 ENGINE GOVERNOR ADJUSTMENT
If both AC frequency and voltage are correspondingly

If both AC frequency and voltage are correspondingly
high or low, adjust the engine governor as follows:

2.7.1 7 KW UNITS

WARNING

The engine must be OFF to perform steps 1 and
\*
2.

1. Loosen the governor clamp bolt (Figures 2.2).

2. Loosen the governor clamp bolt (Figures 2.2).

3. Hold the governor lever at its wide open throttle

4. Hold the governor lever at its wide open throttle
   position (clockwise), and rotate the governor
   shaft clockwise as far as it will go. Then, tighten
   the governor lever clamp bolt to 70 inch-pounds
   (8 N-m).

5. Start the generator; let it stabilize and warm up

6. Start the generator; let it stabilize and warm up
   at no-load.


Figure 2.2 — Engine Governor Adjustment
Single Cylinder Engines

* * *

4. Connect a frequency meter across the generators
   AC output leads.

5. Turn the primary adjust screw to obtain a fre-

6. Turn the primary adjust screw to obtain a frequency reading of 61.5 Hertz. Turn the secondary
   adjust screw to obtain a frequency of 62.5 Hz.

7. When frequency is correct at no load, check the

8. When frequency is correct at no load, check the
   AC voltage reading. If voltage is incorrect, the voltage regulator may require adjustment (See the
   Voltage Regulator Adjustment section).


 2.7.2 13 KW AND 16 KW UNITS

NOTE:

All V-twin units DO NOT require an engine governor adjustment due to their design.

 2.7.3 ADDITIONAL CORROSION
PROTECTION

Periodically spray all engine linkage parts and brackets with corrosion inhibiting spray such as WD-40 or
a comparable product.

2.8 VOLTAGE REGULATOR
ADJUSTMENT

With the frequency between 62-63 Hertz at no-load,
slowly turn the slotted potentiometer (Figure 2.3)
until line voltage reads 248-252 volts.

 2.8.2 10, 13, AND 16KW UNITS

Figure 2.3 – Voltage Adjustment Potentiometer

NOTE:

The access panel on top of the control panel must
be removed to adjust the voltage regulator.

NOTE:

The voltage regulator is housed above the generator’s control panel. The regulator maintains a
voltage in direct proportion to frequency at a 2-to-
1 ratio. For example, at 62 Hertz, line-to-neutral
voltage will be 124 volts.

3.1 USING THE AUTO/OFF/MANUAL
SWITCH (FIGURE 3.1)

3.1.1 "AUTO" POSITION

Selecting this switch position activates fully automatic
system operation. It also allows the unit to automatically start and exercise the engine every seven days
with the setting of the exercise timer (see the Setting
the Exercise Timer section).

This switch position shuts down the engine. This
position also prevents automatic operation.

Figure 3.1 – Generator Control Panel

Set the switch to MANUAL to crank and start the
engine. Transfer to standby power will not occur
unless there is a utility failure.

With the switch set to AUTO, the engine may
\*
crank and start at any time without warning.
Such automatic starting normally occurs when
utility power source voltage drops below a preset level or during the normal exercise cycle. To
prevent possible injury that might be caused
by such sudden starts, always set the switch to
OFF and remove the fuses before working on or
around the generator or transfer switch. Then,
place a “DO NOT OPERATE” tag on the generator panel and on the transfer switch.
15

 3.1.3 “MANUAL” POSITION

* * *

3.1.4 CHOKE OPERATION

1. 990 engines have an electric choke in the air box
   that is automatically controlled by the electronic
   control board.

2. 530 engines have an electric choke on the divider

3. 530 engines have an electric choke on the divider
   panel air inlet hose that is automatically controlled by the electronic control board.

4. 410 engines do not have a choke.

5. 410 engines do not have a choke.


3.2 AUTOMATIC TRANSFER
OPERATION
To select automatic operation, do the following:

OPERATION
To select automatic operation, do the following:

1. Make sure the transfer switch main contacts are
   set to their UTILITY position, i.e., loads connected to the utility power source (Figure 3.2).

2. Be sure that normal UTILITY power source volt-

3. Be sure that normal UTILITY power source voltage is available to transfer switch terminal lugs
   N1 and N2 (Refer to the Electrical Data section).

4. Set the generator’s AUTO/OFF/MANUAL switch to

5. Set the generator’s AUTO/OFF/MANUAL switch to
   AUTO.

6. Set the generator’s main circuit breaker to its ON

7. Set the generator’s main circuit breaker to its ON
   (or CLOSED) position.
   With the preceding steps complete, the generator will


3.3 SEQUENCE OF AUTOMATIC
OPERATION
The generator’s control panel houses a control logic

OPERATION
The generator’s control panel houses a control logic
circuit board. This board constantly monitors utility power source voltage. Should that voltage drop
below a preset level, circuit board action will signal
the engine to crank and start. After the engine starts,
the circuit board signals the transfer switch to activate and connect load circuits to the standby power
supply (load terminal lugs T1/T2 connect to terminal
lugs E1/E2). Refer to the Electrical Data section.

The generator must run at 50 Hz or greater for the
transfer output to be activated. Once activated, it will
remain active even if the frequency dips below 50
Hz.
Upon restoration of utility source voltage above a

A. Utility Voltage Dropout Sensor
• This sensor monitors utility source voltage.

• This sensor monitors utility source voltage.
• If utility source voltage drops below about 65

• If utility source voltage drops below about 65
percent of the nominal supply voltage, the sensor
energizes a 10 second timer.
• Once the timer has expired, the engine will crank

• Once the timer has expired, the engine will crank
and start if utility is still low.
B. Engine Warm-up Time Delay

B. Engine Warm-up Time Delay
• This mechanism lets the engine warm up for

• This mechanism lets the engine warm up for
about five (5) seconds before the load is transferred to the standby source.
C. Standby Voltage Sensor

C. Standby Voltage Sensor
• This sensor monitors generator AC output volt-

• This sensor monitors generator AC output voltage. When the voltage has reached 50 percent of
the nominal rated voltage, transfer to standby
can occur.
D. Utility Voltage Pickup Sensor

D. Utility Voltage Pickup Sensor
• This sensor monitors utility power supply volt-

• This sensor monitors utility power supply voltage. When that voltage is restored above 75 percent of the nominal source voltage, a retransfer
time delay starts timing.
E. Retransfer Time Delay

E. Retransfer Time Delay
• This timer runs for about 15 seconds.

• This timer runs for about 15 seconds.
• At end of a 15-second delay, circuit board action

• At end of a 15-second delay, circuit board action
de-energizes transfer relay in the transfer switch
if utility is still present.
• Retransfer to utility power source then occurs.

• Retransfer to utility power source then occurs.
F. Engine Cool-down Timer

F. Engine Cool-down Timer
• When the load is transferred back to utility power

• When the load is transferred back to utility power
source, the engine cool-down timer starts timing.
• The timer will run for about one minute, and the

ing.
• The timer will run for about one minute, and the
generator will then shut down.

3.4 MANUAL TRANSFER OPERATION

 3.4.1 TRANSFER TO GENERATOR
POWER SOURCE

DANGER

To start the generator and activate the transfer switch
manually, proceed as follows:

1. Set the generator’s AUTO/OFF/MANUAL switch to
   OFF.

2. Set the generator’s main circuit breaker to its

3. Turn OFF the utility power supply to the transfer
   switch using the means provided (such as a utility
   main line circuit breaker).


* * *

4. Use the manual transfer handle inside the transfer switch to move the main contacts to their
   STANDBY position, i.e., loads connected to the
   standby power source (Figure 3.2).

5. To crank and start the engine, set the AUTO/OFF/

6. Set the generator’s main circuit breaker to its ON
   (or CLOSED) position. The standby power source
   now powers the loads.


Figure 3.2 – Manual Transfer Switch Operation

3.4.2 TRANSFER BACK TO UTILITY POWER
SOURCE

When utility power has been restored, transfer back
to that source and shut down the generator. This can
be accomplished as follows:

01. Set the generator’s main circuit breaker to its

02. Set the generator’s AUTO/OFF/MANUAL switch to
    its OFF (or OPEN) position. The engine should
    shut down.

03. Check that utility power supply to the transfer

04. Set the generator’s main circuit breaker to its
    OFF (or OPEN) position.

05. Let the engine run for a minute or two at no-load
    to stabilize the internal temperatures.

06. Set the generator’s AUTO/OFF/MANUAL switch to

07. Check that utility power supply to the transfer
    switch is turned OFF.

08. Use the manual transfer handle inside the transfer switch to move the main contacts back to their
    UTILITY position, i.e., loads connected to the utility power source (Figure 3.2).

09. Turn ON the utility power supply to the transfer

10. Turn ON the utility power supply to the transfer
    switch using the means provided.

11. Set the system to automatic operation as outlined

12. Set the system to automatic operation as outlined
    in Automatic Transfer Operation section.


3.5 SETTING THE EXERCISE TIMER
This generator is equipped with an exercise timer.

This generator is equipped with an exercise timer.
Once it is set, the generator will start and exercise
once every seven days, on the day of the week and at
the time of day the following sequence is completed.
During this exercise period, the unit runs for approximately 12 minutes and then shuts down. Transfer of
loads to the generator output does not occur during
the exercise cycle unless utility power is lost.
A switch on the control panel (see Figure 3.1) per-

A switch on the control panel (see Figure 3.1) permits selection of the day and time for the system to
exercise. At the chosen time, perform the following
sequence to select the desired day and time of day
the system will exercise. Remember seasonal time
changes affect the exercise time settings.

1. Verify that the AUTO/OFF/MANUAL switch is set
   to AUTO.
2. Press and hold the "Set Exercise Time" switch for

to AUTO.
2\. Press and hold the "Set Exercise Time" switch for
several seconds, then release. All the red LED's
will flash for approximately 10 seconds and then
stop.
3\. Once the red LED's stop flashing, the generator

3. Once the red LED's stop flashing, the generator
   will start and run for approximately 12 minutes
   and then shut down. The exerciser is now set to
   run at this time of day each week.
    Example: If the "Set Exercise Time" switch is

Example: If the "Set Exercise Time" switch is
pressed on Saturday afternoon at 2:00 p.m., the
generator will start and exercise for approximately 12 minutes every Saturday at 2:00 p.m..
NOTE:

NOTE:

The 16kW unit has a low speed exercise option. Dip
switch 1 on the control board is factory set to OFF.
This allows the engine to run at a slower speed during weekly exercise periods for quieter operation. If
this Dip switch is set to ON, the generator will exercise at it's normal speed.
This DIP switch position is only read at board power

* * *

Low speed exercise will be handled as follows:

1. The standard start sequence will be initiated.

2. The unit will run at 2,400 RPM.

3. The unit will run at 2,400 RPM.

4. If utility is lost during exercise, the controller will

5. If utility is lost during exercise, the controller will
   do the following:
   • Wait 10 seconds for utility to return.


• Wait 10 seconds for utility to return.
• If utility returns within 10 seconds, continue to

• If utility returns within 10 seconds, continue to
exercise at 2,400 RPM.
• If utility is still lost after 10 seconds, run the

• If utility is still lost after 10 seconds, run the
engine up to 3600 RPM and transfer the load.
At this time the controller will exit the exercise
routine and assume full automatic operation.

3.6 PROTECTION SYSTEMS

 3.6.1 LOW OIL PRESSURE SWITCH

This switch (Figure 3.3) has normally closed contacts that are held open by engine oil pressure during cranking and operating. Should oil pressure
drop below the 8 psi range, switch contacts close,
and the engine shuts down. The unit should not be
restarted until oil is added. The AUTO/OFF/MANUAL
switch must then be turned to OFF and then back to
AUTO.

 3.6.2 HIGH TEMPERATURE SWITCH

This switch’s contacts (Figure 3.3) close if the temperature should exceed approximately 144º C (293º
F), initiating an engine shutdown. The generator will
automatically restart and the LED on the generator
control panel will reset once the temperature has
returned to a safe operating level.

$$
1 4 4 ^ {\\circ} \\mathrm {C}
$$

Figure 3.3 – Low Oil Pressure and
High Temperature Switches

3.6.3 OVERCRANK

This feature prevents the generator from damaging
itself when it continually attempts to start and another problem, such as no fuel supply, prevents it from
starting. The unit will crank and rest for a preset
time limit. Then, it will stop cranking, and the LED
on the generator control panel will light indicating an
overcrank failure. The AUTO/OFF/MANUAL switch
will need to be set to OFF and then back to AUTO to
reset the generator control board.

NOTE:

If the fault is not repaired, the overcrank feature
will continue to activate.

3.7.3.1 Approximate Crank Cycle Times
7kW Units:

7kW Units:

• 15 seconds ON
• 7 seconds OFF

• 7 seconds ON
• 7 seconds OFF

• 7 seconds OFF
• 7 seconds ON

• 7 seconds OFF
• 7 seconds ON

• 7 seconds ON
• 7 seconds OFF

• 7 seconds OFF
• 7 seconds ON

• 7 seconds ON
• 7 seconds OFF

If the unit fails to start, the overcrank alarm LED will
be illuminated.

• 7 seconds ON
If the unit fails to start, the overcrank alarm LED will

10kW, 13kW and 16kW Units:

• 16 seconds ON
• 7 seconds OFF

• 16 seconds ON
• 7 seconds OFF

• 7 seconds OFF
• 16 seconds ON

• 16 seconds ON
• 7 seconds OFF

• 7 seconds OFF
• 7 seconds ON

• 7 seconds ON
• 7 seconds OFF

This feature protects the generator from damage by
shutting it down if it happens to run faster than the
preset limit. This protection also prevents the generator from supplying an output that could potentially damage appliances connected to the generator
circuit. Contact the nearest Authorized Dealer if this
failure occurs.

3.6.4 OVERSPEED

• 7 seconds OFF
• 7 seconds ON

• 7 seconds ON
• 7 seconds OFF

• 7 seconds OFF
If the unit fails to start, the overcrank alarm LED will

* * *

 3.6.5 RPM SENSOR FAILURE

During cranking, if the board does not see a valid
RPM signal within three (3) seconds, it will shut
down and latch out on RPM sensor loss.

During running, if the RPM signal is lost for one full
second the board will shut down the engine, wait 15
seconds, then re-crank the engine.

• If an RPM signal is not detected within the first
three (3) seconds of cranking, the control board
will shut the engine down and latch out on RPM
sensor loss.
• If the RPM signal is detected the engine will start

• If the RPM signal is detected the engine will start
and run normally. If the RPM signal is subsequently lost again, the control board will try one more
re-crank attempt before latching out and flashing
the overspeed LED.

3.6.6 LOW BATTERY

 3.6.6 LOW BATTERY
The microprocessor will continually monitor the
battery voltage and turn on the Low Battery LED if
the battery voltage falls below 11.0 volts for one (1)
minute. No other action is taken on a low battery
condition. Low battery voltage is a non-latching alarm
which will automatically clear if the battery voltage
rises above 11.0 volts. Battery voltage is NOT monitored during the crank cycle.

4.1 FUSES
The 15-amp fuse on the generator panel protects the
DC control circuit against overload (Figure 4.1). This
fuse is wired in series with the battery output lead
to the panel. If this fuse element has melted open,
the engine will not be able to crank or start. Replace
this fuse using only an identical 15-amp replacement
fuse. To replace the fuse, push the fuse holder cap
down and rotate it counterclockwise. Whenever the
fuse is removed or replaced, the exercise timer needs
to be reset.

4.1 FUSES
The 15-amp fuse on the generator panel protects the

Figure 4.1 – Generator Control Panel

4.2 CHECKING THE ENGINE
OIL LEVEL
For oil capacities, see the Specifications section.

OIL LEVEL
For oil capacities, see the Specifications section.
For engine oil recommendations, see the Engine Oil
Recommendations section. To check the engine oil
level, proceed as follows (Figures 4.2, 4.3 and 4.4):

1. Move the AUTO/OFF/ MANUAL switch to the OFF
   position.

2. Remove the dipstick and wipe it dry with a clean

3. Remove the dipstick and wipe it dry with a clean
   cloth.

4. Completely insert the dipstick; then, remove it

5. Completely insert the dipstick; then, remove it
   again. The oil level should be at the dipstick “Full”
   mark. If necessary, add oil to the “Full” mark
   only. DO NOT FILL ABOVE THE “FULL” MARK.


Never operate the engine with the oil level
\*
below the “Add” mark on the dipstick. Doing
this could damage the engine.
4\. Install the dipstick.

5. Reset the AUTO/OFF/MANUAL switch to its original position.

6. Install the dipstick.

7. Reset the AUTO/OFF/MANUAL switch to its origi-


Figure 4.2 — Oil Dipstick and Fill, 7kW

* * *

Figure 4.3 — Oil Dipstick and Fill, 10kW

Figure 4.4 — Oil Dipstick and Fill,
13kW and 16kW

4.3 CHANGING THE ENGINE OIL

Use all season SAE 5W-30 synthetic oil or use SAE
30 oil of American Petroleum Institute (API) Service
Class SG, SH, SJ or SL.

 4.3.1 OIL CHANGE INTERVALS

 4.3.3 OIL & OIL FILTER CHANGE PROCEDURE

To change the oil, proceed as follows:

1. Start the engine by moving the AUTO/OFF/
   MANUAL switch to MANUAL and run until it
   is thoroughly warmed up. Then shut OFF the
   engine by moving the switch to the OFF position.

2. Immediately after the engine shuts OFF, pull the

3. Immediately after the engine shuts OFF, pull the
   oil drain hose (Figure 4.5) free of its retaining
   clip. Remove the cap from the hose and drain the
   oil into a suitable container.

4. After the oil has drained, replace the cap onto the

5. After the oil has drained, replace the cap onto the
   end of the oil drain hose. Retain the hose in the
   clip.


Figure 4.5 – Oil Drain Hose and Filter

Change the engine oil filter as follows:

1. With the oil drained, remove the old oil filter by
   turning it counterclockwise.

2. Apply a light coating of clean engine oil to the gas-

3. Refill with the proper recommended oil (see the
   Engine Oil Recommendations section). See the
   Specifications section for oil capacities.

4. Start the engine, run for one (1) minute, and


for recommended filter.
3\. Screw the new filter on by hand until its gasket
lightly contacts the oil filter adapter. Then, tighten
the filter an additional 3/4 to one turn (Figure
4.4).
4\. Refill with the proper recommended oil (see the

6. Shutdown and recheck oil level, add as needed.
   DO NOT OVER FILL.
7. Reset the AUTO/OFF/MANUAL switch to the

* * *

4.4 CHANGING THE ENGINE
AIR CLEANER

 4.4.1 7, 13, AND 16KW GENERATORS

See Figures 1.1 and 1.2, for the location of the air
cleaner. Use the following procedures (Figure 4.6,
7kW; Figure 4.8, 13/16kW):

1. Lift the roof and remove the door.

2. Turn the two screws counterclockwise to loosen.

3. Turn the two screws counterclockwise to loosen.

4. Remove the cover and air filter.

5. Wipe away dust or debris from inside of the air
   box and around edges.

6. Install the new air cleaner into the air box.

7. Install the cover. Turn the two cover screws clockwise to tighten.
   See the Service Schedule section for air cleaner main-

8. Remove the cover and air filter.

9. Wipe away dust or debris from inside of the air


See the Service Schedule section for air cleaner maintenance. See the Specifications section for air filter
replacement part number.

Figure 4.6 — 7 kW, Engine Air Cleaner Location

4.4.2 10KW GENERATORS

Figure 4.7 — 10kW Engine Air Cleaner

See Figure 1.2 for the location of the air cleaner. Use
the following procedure (Figure 4.7):

1. Lift the roof and remove the door.
2. Turn the worm gear clamp screw counterclock-

wise to loosen.
3\. Pull the old filter off the divider panel hub.
4\. Wipe away dust or debris from the panel hub.

4. Wipe away dust or debris from the panel hub.

5. Install the new air cleaner onto the hub.

6. Turn the worm gear clamp screw clockwise to
   tighten.

7. Replace door and roof.

8. Replace door and roof.


Figure 4.8 — 13 kW and 16 kW Engine
Air Cleaner

4.5 SPARK PLUG(S)
Reset the spark plug(s) gap or replace the spark

4.5 SPARK PLUG(S)
Reset the spark plug(s) gap or replace the spark
plug(s) as necessary. See the Service Schedule section
for maintenance requirements.

1. Clean the area around the base of the spark

2. Clean the area around the base of the spark
   plug(s) to keep dirt and debris out of the engine.

3. Remove the spark plug(s) and check the condi-

4. Remove the spark plug(s) and check the condition. Replace the spark plug(s) if worn or if reuse
   is questionable. See the Service Schedule section
   for recommended inspection. Clean by scraping
   or washing using a wire brush and commercial
   solvent. Do not blast the spark plug(s) to clean.


* * *

3. Check the spark plug gap using a wire feeler
   gauge. Adjust the gap to 0.76 mm (0.030 inch) for
   7 and 10kW; and 1.02 mm (0.040 inch) for 13/16
   kW by carefully bending the ground electrode
   (Figure 4.9).

Figure 4.9 – Setting the Spark Plug Gap

SET PLUG GAP AT 0.76 mm (.030 inch) - 7 & 10kW;
1.02 mm (.040 inch) - 13 & 16kW

4.6 BATTERY MAINTENANCE
The battery should be inspected per the "Service

DANGER

Do not dispose of the battery in a fire. The
$
battery is capable of exploding.

• Remove the 15A fuse from the generator control
panel.
• Remove watches, rings or other metal objects;

A battery presents a risk of electrical shock
+
and high short circuit current. The following precautions are to be observed when working on
batteries:
• Remove the 15A fuse from the generator control

panel.
• Remove watches, rings or other metal objects;
• Use tools with insulated handles;

WARNING

battery; and
• Disconnect charging source prior to connecting or
disconnecting battery terminals.

• Do not lay tools or metal parts on top of the
battery; and
• Disconnect charging source prior to connecting or

The electrolyte is a dilute sulfuric acid that is
\*
harmful to the skin and eyes. It is electrically
conductive and corrosive. The following
procedures are to be observed:
• Wear full eye protection and protective clothing;

• Wear full eye protection and protective clothing;
• Where electrolyte contacts the skin, wash it off

• Where electrolyte contacts the skin, wash it off
immediately with water;
• Where electrolyte contacts the eyes, flush

• Where electrolyte contacts the eyes, flush
thoroughly and immediately with water and seek
medical attention; and
• Spilled electrolyte is to be washed down with an

• Spilled electrolyte is to be washed down with an
acid neutralizing agent. A common practice is to
use a solution of 1 pound (500 grams) bicarbonate
of soda to 1 gallon (4 liters) of water. The bicarbonate of soda solution is to be added until the
evidence of reaction (foaming) has ceased. The
resulting liquid is to be flushed with water and the
area dried.

Lead-acid batteries present a risk of fire because
!
they generate hydrogen gas. The
following procedures are to be followed:

• DO NOT SMOKE when near the battery;
• DO NOT cause flame or spark in battery area; and

• DO NOT cause flame or spark in battery area; and
• Discharge static electricity from body before touching the battery by first touching a grounded metal
surface.

Be sure the AUTO/OFF/MANUAL switch is set to
\*
the OFF position before connecting the battery
cables. If the switch is set to AUTO or MANUAL,
the generator can crank and start as soon as the
battery cables are connected.
$

Be sure the utility power supply is turned off
$
and the 15A fuse is removed from the generator
control panel, or sparking may occur at the battery posts as the cables are attached and cause
an explosion.

4.7 ADJUSTING GH-410/GT-530/990
VALVE CLEARANCE
After the first six (6) months of operation, check

Important: If feeling uncomfortable about doing
this procedure or the proper tools are not available,
please contact the Authorized Dealer for service
assistance. This is a very important step to insure
longest life for the engine.

To check valve clearance:

VALVE CLEARANCE
After the first six (6) months of operation, check
the valve clearance in the engine, adjust if necessary.

* * *

• Remove spark plug wires and position wires away
from plugs.
• Remove spark plugs.

• Remove spark plugs.
• Make sure the piston is at Top Dead Center (TDC)

• Make sure the piston is at Top Dead Center (TDC)
of its compression stroke (both valves closed). To
get the piston at TDC, remove the intake screen at
the front of the engine to gain access to the flywheel
nut. Use a large socket and socket wrench to rotate
the nut and hence the engine in a clockwise direction. While watching the piston through the spark
plug hole. The piston should move up and down.
The piston is at TDC when it is at its highest point
of travel.
To adjust valve clearance (if necessary):

To adjust valve clearance (if necessary):

• Make sure the engine is at 60° to 80° F.
• Make sure that the spark plug wire is removed

$$
6 0 ^ {\\circ}
$$

• Make sure that the spark plug wire is removed
from the spark plug and out of the way.
• Remove the four screws attaching the valve cover

• Remove the four screws attaching the valve cover
with a #2 or #3 Phillips screwdriver.
• Loosen the rocker jam nut. Use an 10mm allen

• Loosen the rocker jam nut. Use an 10mm allen
wrench to turn the pivot ball stud while checking
clearance between the rocker arm and the valve
stem with a feeler gauge. Correct clearance is
0.002-0.004 inch (0.05-0.1 mm).
NOTE:

NOTE:

Hold the rocker arm jam nut in place as the pivot
ball stud is turned.
When valve clearance is correct, hold the pivot ball

When valve clearance is correct, hold the pivot ball
stud in place with the allen wrench and tighten the
rocker arm jam nut. Tighten the jam nut to 174
in/lbs. torque. After tightening the jam nut, recheck
valve clearance to make sure it did not change.

• Install spark plugs.
• Re-attach the spark plug wire to the spark plug.

• Re-attach the valve cover.
NOTE:

• Re-attach the spark plug wire to the spark plug.
• On the GT-530 and GT-990, repeat the process for

• On the GT-530 and GT-990, repeat the process for
the other cylinder.

4.8 COOLING SYSTEM
Air inlet and outlet openings in the generator com-

Air inlet and outlet openings in the generator compartment must be open and unobstructed for continued proper operation. This includes such obstructions as high grass, weeds, brush, leaves and snow.
Without sufficient cooling and ventilating air flow, the

Without sufficient cooling and ventilating air flow, the
engine/generator quickly overheats, which causes it
to quickly shut down. (See Figure 4.11 for vent locations.)

Make sure the doors and roof are in place during operation as running the generator with them
removed can effect cooling air movement.

Figure 4.11 – Cooling Vent Locations

The exhaust from this product gets extremely
!
hot and remains hot after shutdown. High grass,
weeds, brush, leaves, etc. must remain clear of
the exhaust. Such materials may ignite and burn
from the heat of the exhaust system.

4.9 ATTENTION AFTER SUBMERSION
If the generator has been submerged in water, it must

$$
4 0 ^ {\\circ} \\mathrm {C} (1 0 4 ^ {\\circ} \\mathrm {F})
$$

* * *

4.10 CORROSION PROTECTION
Periodically wash and wax the enclosure using auto-

4.10 CORROSION PROTECTION
Periodically wash and wax the enclosure using automotive type products. Frequent washing is recommended in salt water/coastal areas. Spray engine
linkages with a light oil such as WD-40.

4.11 OUT OF SERVICE PROCEDURE

 4.11.1 REMOVAL FROM SERVICE

If the generator cannot be exercised every seven days,
and will be out of service longer than 90 days, prepare the generator for storage as follows:

1. Start the engine and let it warm up.

2. Close the fuel shutoff valve in the fuel supply line
   and allow the unit to shut down.

3. Once the unit has shut down, it will signal a low

4. Set the generator’s main circuit breaker to its
   OFF (or OPEN) position.

5. Set the AUTO/OFF/MANUAL switch to OFF and


OFF (or OPEN) position.
5\. Set the AUTO/OFF/MANUAL switch to OFF and
turn off the utility power to the transfer switch.
Remove the 15A fuse from the generator control
panel. Disconnect the battery cables as outlined
in “General Hazards”.
6\. While the engine is still warm from running,

6. While the engine is still warm from running,
   drain the oil completely. Refill the crankcase with
   oil. See ”Engine Oil Recommendations".

7. Attach a tag to the engine indicating the viscosity

8. Attach a tag to the engine indicating the viscosity
   and classification of the oil in the crankcase.

9. Remove the spark plug(s) and spray fogging

10. Remove the spark plug(s) and spray fogging
   agent into the spark plug(s) threaded openings.
   Reinstall and tighten the spark plug(s).

11. Remove the battery and store it in a cool, dry

12. Remove the battery and store it in a cool, dry
   room on a wooden board. Never store the battery
   on any concrete or earthen floor.

13. Clean and wipe the entire generator.


 4.11.2 RETURN TO SERVICE

To return the unit to service after storage, proceed
as follows:

10. Clean and wipe the entire generator.

11. Verify that utility power is turned off and that the
    AUTO/OFF/MANUAL switch is set to OFF.

12. Check the tag on the engine for oil viscosity and

13. Check the tag on the engine for oil viscosity and
    classification. Verify that the correct recommended oil is used in the engine (see the Engine Oil
    Recommendations section). If necessary, drain
    and refill with the proper oil.

14. Check the state of the battery. Fill all cells of

15. Check the state of the battery. Fill all cells of
    unsealed batteries to the proper level with distilled water. DO NOT USE TAP WATER IN THE
    BATTERY. Recharge the battery to 100 percent
    state of charge, or, if defective, replace the battery.
    See “Specifications,” for type and size.

16. Clean and wipe the entire generator.

17. Clean and wipe the entire generator.

18. Make sure the 15A fuse is removed from the

19. Make sure the 15A fuse is removed from the
    generator control panel. Reconnect the battery.
    Observe battery polarity. Damage may occur if the
    battery is connected incorrectly.

20. Open the fuel shutoff valve.

21. Open the fuel shutoff valve.

22. Insert the 15A fuse into the generator control

23. Insert the 15A fuse into the generator control
    panel. Start the unit by moving the AUTO/OFF/
    MANUAL switch to MANUAL. Allow the unit to
    warm up thoroughly.

24. Stop the unit by setting the AUTO/OFF/MANUAL

25. Stop the unit by setting the AUTO/OFF/MANUAL
    switch to OFF.

26. Turn on the utility power to the transfer switch.

27. Turn on the utility power to the transfer switch.

28. Set the AUTO/OFF/MANUAL switch to AUTO.

29. The generator is now ready for service.

30. The generator is now ready for service.
    NOTE:


NOTE:

If the battery was dead or disconnected, the exercise timer must be reset.

* * *

4.12 SERVICE SCHEDULE

ATTENTION: It is recommended that all service work
be performed by the nearest Authorized Dealer.

| SYSTEM/COMPONENT | PROCEDURE |  |  | FREQUENCY |
| --- | --- | --- | --- | --- |
| X=ActionR=Replace as Necessary\*=Notify Dealerif Repair is Needed. | Inspect | Change | Clean | W=WeeklyM=MonthlyY=Yearly |
| FUEL |  |  |  |  |
| Fuel lines and connections\* | X |  |  | M |
| LUBRICATION |  |  |  |  |
| Oil level | X |  |  | M |
| Oil |  | X |  | EVERY 100 HOURS\*\*AND Y |
| Oil filter |  | X |  | EVERY 100 HOURS\*\*AND Y |
| COOLING |  |  |  |  |
| Enclosure louvers | X |  | X | W |
| BATTERY |  |  |  |  |
| Remove corrosionensure dryness | X |  | X | M |
| Clean and tightenbattery terminals | X |  | X | M |
| Check charge state | X | R |  | EVERY 6 M |
| Electrolyte level(unsealed batteries only)\* | X | R |  | EVERY 6 M |
| ENGINE AND MOUNTING |  |  |  |  |
| Air cleaner | X | R |  | Y |
| Spark plug(s) | X | R |  | Y |
| GENERAL CONDITION |  |  |  |  |
| Vibration,Noise,Leakage,Temperature\* | X |  |  | M |
| COMPLETE TUNE-UP\* | TO BE COMPLETED BY ANAUTHORIZED DEALER |  |  | Y |

- Contact the nearest Authorized Dealer for assistance if necessary.

\\*\\* Change oil and fi lter after fi rst eight (8) hours of operation and then every 100 hours thereafter. Change sooner
when operating under a heavy load or in a dusty or dirty environment or in high ambient temperatures.

* * *

5.1 TROUBLESHOOTING GUIDE

| Problem | Cause | Correction |
| --- | --- | --- |
| The engine will not crank. | 1\. Fuse blown. |  |
| 2\. Loose, corroded or defective battery cables. |  |  |
| 3\. Defective starter contactor.(7kW) |  |  |
| 4\. Defective starter motor. |  |  |
| 5\. Dead Battery. | 1\. Correct short circuit condition replace 15A fuse in generator control panel. |  |
| 2\. Tighten, clean or replace as necessary. |  |  |
| 3\. \* |  |  |
| 4\. \* |  |  |
| 5\. Charge or replace battery. |  |  |
| The engine cranks but will not start. | 1\. Out of fuel. |  |
| 2\. Defective fuel solenoid(FS). |  |  |
| 3\. Open #14 wire from engine control board. |  |  |
| 4\. Defective spark plug(s). |  |  |
| 5\. Valve lash out of adjustment. |  |  |
| 6\. Choke not operating. | 1\. Replenish fuel/Turn on fuel. |  |
| 2\. \* |  |  |
| 3\. \* |  |  |
| 4\. Clean, re-gap or replace plug. |  |  |
| 5\. Reset valve lash. |  |  |
| 6\. Verify choke plate moves from rest. |  |  |
| The engine starts hard and runs rough. | 1\. Air cleaner plugged or damaged. |  |
| 2\. Defective spark plug(s). |  |  |
| 3\. Fuel regulator not set. |  |  |
| 4\. Fuel pressure incorrect. |  |  |
| 5\. Fuel selector in wrong position. |  |  |
| 6\. Choke remains closed. | 1\. Check, replace air cleaner. |  |
| 2\. Clean, re-gap or replace plug. |  |  |
| 3\. Set Fuel Regulator. |  |  |
| 4\. Confirm fuel pressure to repair is 10-12" water column (0.3psi) for LP and 5-7" water column (0.18-0.25psi) for natural gas. |  |  |
| 5\. Move selector to correct position. |  |  |
| 6\. Verify choke plate moves from rest. |  |  |
| The AUTO/OFF/MANUAL switch is set to OFF,but the engine continues to run. | 1\. Defective switch. |  |
| 2\. AUTO/OFF/MANUAL switch wired incorrectly. |  |  |
| 3\. Defective control board. | 1\. \* |  |
| 2\. \* |  |  |
| 3\. \* |  |  |
| There is no AC output from the generator. | 1\. Main line circuit breaker is in the OFF(or OPEN) position. |  |
| 2\. Generator internal failure. | 1\. Reset circuit breaker to ON(or CLOSED). |  |
| 2\. \* |  |  |
| There is no transfer to standby after utility source failure. | 1\. Defective transfer switch coil. |  |
| 2\. Defective transfer relay. |  |  |
| 3\. Transfer relay circuit open. |  |  |
| 4\. Defective control logic board. | 1\. \* |  |
| 2\. \* |  |  |
| 3\. \* |  |  |
| 4\. \* |  |  |
| Unit consumes large amounts of oil. | 1\. Engine over filled with oil. |  |
| 2\. Engine breather defective. | 1\. Adjust oil to proper level. |  |
| 2\. \* |  |  |

$$
5 - 7"
$$

\*Contact the nearest Authorized Dealer for assistance.

* * *

* * *

* * *

| NOTES |
| --- |
|  |

Air-cooled Generators

* * *

* * *

* * *

Section 7 — Mounting Dimensions

Air-cooled Generators
Drawing No. 0F9424-B

**ALL DIMENSIONS IN MILLIMETERS \[INCHES\]**

"DO NOT LIFT BY ROOF"

* * *

Section 8 – Electrical Data
Air-cooled Generators
Electrical Schematic – 8, 10, 12 and 16 Circuit Load Center – Drawing No. 0F9775

INSTALLATION

194 194
12VDC TRANSFER COIL
194
23 23
OPEN
23
N2 N2
24VAC OUTPUT
N2
N1 N1
E1 BLACK
E2 RED
NEUTRAL (WHITE)
NEUTRAL (WHITE)
RED (MAIN 2)
BLACK (MAIN 1)

T5 TO GENERATOR CONTROL PANEL

TO GENERATOR OUTPUT CIRCUIT BREAKER

240VAC TO MAN DISTRIBUTION PANEL

NEUTRAL CONNECTION INSIDE SWITCH

CIRCUIT 14
CIRCUIT 13
CIRCUIT 10
CIRCUIT 9
CIRCUIT 6
CIRCUIT 5
CIRCUIT 2
CIRCUIT 1
T1 T2
T1 T2
E2 E2
E2 E2

LEGEND
ATS-AUTOMATIC TRANSFER SWITCH
C1-UTILITY COIL & RECTIFIER
C2-GENERATOR COIL & RECTIFIER
F1 F2A5A, 600V FUSE
LC-CIRCUIT BREAKER (LOADS)
TR-TRANSFER RELAY
TS-TERMINAL STRIP
XA XB-LIMIT SWITCHES

8 CIRCUIT LOAD CENTER
10 CIRCUIT LOAD CENTER
12 CIRCUIT LOAD CENTER
16 CIRCUIT LOAD CENTER

LC

* * *

ELECTRICAL DATA

Section 8 – Electrical Data
Air-cooled Generators
Wiring Diagram – 10, 13 & 16kW, V-Twin – Drawing No. 0F7822

DIAGRAM KEY
B4. BRUSH ASSUMED
B5. RIGHT OUTPUT CHARGE RELAY
C5. MAX OUTPUT MESSAGE
C6. ELEVATOR SWITCH
C7. ENTRY MODULE
C8. ALTERNATOR WIRING
C9. RIGHT OUTPUT WIRING
D9. FOR MOUNTED DP SWITCH
F1. FOR MOUNTED DP SWITCH
F2. FUSE DILUX/COS335 + TWIN ONLY
F3. FUSE 1 SWAP
F4. FUSE 1 SWAP
G1. GROUND CONNECTIONS IN CONTROL PANEL
G2. GROUND CONNECTIONS IN CONTROL PANEL
G3. GROUND CONNECTIONS IN CONTROL PANEL
H1. NAIL CONNECTOR
H1. BACKGROUND TRANSFORMER
H1. EXTENSION MODULE CYL1
H1. EXTENSION MODULE CYL2
H1. EXTENSION MODULE CYL3
H1. EXTENSION MODULE CYL4
H1. EXTENSION MODULE SWITCH
H1. STATISTIC CONNECTOR
H8. ENTRY MODULE
H8. ENTRY MODULE
H8. ENTRY MODULE
H9. ENTRY MODULE
H9. ENTRY MODULE
H9. SET EXTENSION SWITCH
H10. INCLUSTED TERMINAL BLACK 4 TAB
H10. INCLUSTED TERMINAL BLACK 4 TAB
H10. INCLUSTED TERMINAL BLACK 4 TAB
H10. TRANSPOHERMETER (VOLTAGE 8 & 9 mho) (14 DUAL SEC)

ENGINE WIRING

Battery Charger Genuity

CONTROL PRINTED CIRCUIT BOARD

ALARM INDICATORS

BLACK

RED

CUSTOMER SUPPLIED

* * *

Section 8 – Electrical Data
Air-cooled Generators
Wiring Diagram – 10, 13 & 16kW, V-Twin – Drawing No. 0F7822

CONTROL PANEL BOX

CLOSEST TO BEARING
BA
SISTOR

VOLTAGE REGULATOR

GND 1

BLACK
RED

AUTO
MANUAL

24V GENERATOR
OUTPUT TO TRANSFER
SWITCH CONNECTOR

CUSTOMER
CONNECTION

33

* * *

ELECTRICAL DATA

Section 8 – Electrical Data
Air-cooled Generators
Electrical Schematic - 10, 13 & 16kW, V-Twin – Drawing No. 0F7823

BATTERY CHARGER
224B
228B
0
13
0
0
15
0
16
56
0
11
22
4
8
2
0
16
0
13
224B
228B
18
86
85
4
13
5
2
16
14

ELECTRONIC VOLTAGE REGULATOR

GOVERNOR ACTUATOR

MANUAL AUTO
194
15A
194
4
56
15
0
11
22

194
15A
194
4
56
15
0
11
22

SW1
228
23B
15
SW2
15B

J1
15A
4
23
86
18
LC1
56
224
239
85
LC2
14
228
15B
0
CS
14

CONTROL PRINTED CIRCUIT BOARD

34

* * *

Section 8 – Electrical Data
Air-cooled Generators
Electrical Schematic – 10, 13 & 16kW, V-Twin – Drawing No. 0F7823

ENGINE AND ALTERNATOR
BATTERY CHARGE WINDING
66
77
8
DPE WINDING
POWER WINDING
11
22
33
44
POWER WINDING

RED BATTERY 12V
BA FIELD

LC1
LC2

BCR
LC1
LC2

NEUTRAL
24V/NC GENERATOR
OUTPUT TDX
TRANSFER SWITCH
CONNECTOR

12V/nc
TRANSFER
RELAY
COIL

24V/nc
LITTLE
INPUT

DAGRAM KEY
BA - BRUSH ASSEMBLY
BCP - BATTERY CHARGE RELAY
CB - CIRCUIT BREAKER MAIN OUTPUT
CS - DIE CHAIN EXPLAND
S1 - FUEL SOLENOID
S2 - FUEL SOLENOID (DOES NOT V TWIN ONLY)
F1 - FUSE 1.5 AMP
HOT - HEAT OF TEMPERATURE SWITCH
HOT - HEAT OF TEMPERATURE SWITCH
CCT - DIE CONTROL TRANSFORMER
M1 - UNION MODULE, CYLINDER #1
M2 - UNION MODULE, CYLINDER #2

LOP - LOW OIL PRESSURE SWITCH
SC - STARTER CONNECTOR
SCR - STARTER CONNECTOR SWITCH
BM - STARTER MOTOR
SP1 - SPRY - SKINK PLUSS
SP2 - SKINK PLUSS - UPF / MANUAL
DPST ON OFF-ON
SW2 - SWITCH SET EXERCISE
SP1 NO. ON/OFF
TX - TRANSFORMER 14 noe 56 VA &
19 vols 1 VM QUAL, EEC.\]

35

* * *

ELECTRICAL DATA

Section 8 – Electrical Data
Air-cooled Generators
Wiring Diagram – 7kW, Single Cylinder – Drawing No. 0F7820

ENGINE WIRING

DIAGRAM KEY
RA: SPARK ASSEMBLY
BC0: BATTERY CHANGE REAL
BM1: MOTOR CHANGE REAL
C1: ENGINE PUMPES
C2: AUTOMATIC PUMPES
F2: FUSE SOLIDEND
F3: FUSE LAMP CONNECTIONS IN CONTROL PANEL
GRD 1: GROUND CONNECTIONS AT ENGINE
GRD 2: GROUND CONNECTIONS AT SWITCH
HC: INLINE CONNECTOR
INLINE CONNECTOR TERMINALS
MI: IGNITION MODULE
SK: SKIP INLINE CONNECTOR SWITCH
SC: STARTER CONNECTOR
SR: STARTER UNION
SP: SPARK PLUG
SW: HOT/OFF MANUAL SWITCH
SW2: SET EXTREME SWITCH
T3: INSULATED TERMINAL, BLACK, 4 TAB
T5: INSULATED TERMINAL, STRK 4 POSITION
TX: TRANSFORMER, 19 kV, 60 VA & 19 kVA, 1.1A (DUAL SEC)

CONTROL PRINTED CIRCUIT BOARD
LED D
ALARM INDICATORS

BLACK
RED
BATTERY
CUSTOMER SUPPLIED

* * *

Section 8 – Electrical Data
Air-cooled Generators
Wiring Diagram – 7kW, Single Cylinder – Drawing No. 0F7820

ELECTRICAL
DATA

CONTROL PANEL BOX

CLOSEST TO BEARING
BA
STATOR

VOLTAGE REGULATOR

GRID 1

AUTO
MANUAL

SANY GENERATOR
OUTPUT WITH TRANSFER
SWITCH CONNECTOR

CUSTOMER
CONNECTION

SANY GENERATOR
OUTPUT WITH TRANSFER
SWITCH CONNECTOR

SANY GENERATOR
OUTPUT WITH TRANSFER
SWITCH CONNECTOR

* * *

ELECTRICAL
DATA

Section 8 – Electrical Data
Air-cooled Generators
Electrical Schematic - 7kW, Single Cylinder – Drawing No. 0F7821

BATTERY
CHARGER
224B
225B
ELECTRONIC
VOLTAGE
REGULATOR
11
22
4
4
5
2
22
11
18
86
85
4
13
4
2
56
14

MANUAL AUTO
194
15A
194
4
56
13
0
11
22
0
23
194
225B
224B
SW1
15
229
15
239
15
F1
14
23
18
86
85
0

SW2
15B

J1
15A
2
4
23
3
86
18
56
4
224
229
9
85
14
225
11
15B
14
225
14
225

CONTROL
PRINTED CIRCUIT
BOARD

38

* * *

Air-cooled Generators
Electrical Schematic – 7kW, Single Cylinder – Drawing No. 0F7821

* * *

Section 8 — Electrical Data

Air-cooled Generators
Wiring Diagram – 8, 10, 12 and 16 Circuit Load Center – Drawing No. 0F9070-A

* * *

Air-cooled Generators
Wiring Diagram – 8, 10, 12 and 16 Circuit Load Center – Drawing No. 0F9070-A

LEGEND
ATS-AUTOMATIC TRANSFER SWITCH
C1-UTILITY COIL & RECTIFIER
C2-GENERATOR COIL & RECTIFIER
F1,F2-5A, 600V FUSE
LC-CIRCUIT BREAKER (LOADS)
(16 CIRCUIT SHOWN FOR REFERENCE ONLY)
N-NEUTRAL
TR-TRANSFER RELAY
TS-TERMINAL STRIP
XA, XB-LIMIT SWITCHES

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
Enclosure – Drawing No. 0F9431-D

SHEET METAL PAINT/MATERIAL CODE LEGEND
The following exploded views contain part numbers of various sheet metal components. Only the base part number is listed. When ordering sheet metal, the correct

The following exploded views contain part numbers of various sheet metal components. Only the base part number is listed. When ordering sheet metal, the correct
color and material information must be included as a suf x at the end of the part number as shown below.
Material Color Example: Desc. Part No. Material Color Order As"

| Material | Color | Example: | Desc. | Part No. | Material | Color | Order As" |
| --- | --- | --- | --- | --- | --- | --- | --- |
| S=Steel | N=Tan |  | Roof | 0F6522 | S=Steel | N=Tan | 0F6522SN |
| A=Aluminum | G=Gray |  | Door | 0F6555 | A=Aluminum | G=Gray | 0F6555AG |
|  | B=Black |  | Divider | 0F6558 | S=Steel | B=Black | 0F6558SB |

* * *

ITEM PART NO. QTY. DESCRIPTION

| 1 | 0F9653 | 1 | PAD, 24 X 4" WITH MOUNTING HOLES | 47 | 0F5438 | 1 | HARNESS, ENGINE (7KW) |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 2 | 0A5771 | 1 | MUCH M-1.25 | 48 | 0F5434 | 1 | HARNESS ENG M-1 HSB |
| 3 | 022129 | 1 | WASHER LOCK 5/16 | 48 | 0F5423 | 1 | PANEL, ENGINE DIVIDER (7KW) |
| 4 | 022129 | 1 | WASHER LOCK 5/16 (7KW) | 48 | 0F7886 | 1 | PANEL, ENGINE DIVIDER (10KW) |
| 5 | 022145 | 1 | WASHER LOCK 5/16 | 48 | 0F7885 | 1 | PANEL, ENGINE DIVIDER |
| 6 | 043107 | 1 | SCREW HHC M-1.25 X 25 | 49 | 023484H | 1 | BUSHING SNAP SB-1500-18 |
| 7 | 090388 | 15 | SCREW TAPTITE M-1.0 X 12 | 50 | 0D30584 | 1 | FOAM, FRONT INTAKE BAFFLE (7KW) |
| 8 | 003700 | 14 | NUT,LOCKING FLANGE M-6.10 | 51 | 0E4245 | 1 | FOAM, FRONT INTAKE BAFFLE |
| 9 | 003700\* | 14 | NUT,LOCKING FLANGE M-6.10 | 51 | 0D3058C | 1 | FOAM, BACK INTAKE BAFFLE (7KW) |
| 10 | 02097\* | 10 | WASHER LOCK M-1/4 | 52 | 0D1605A | 1 | BAFFLE, INTAKE (7KW) |
| 11 | 02473\* | 10 | WASHER FLAT I/4-M6 ZINC | 52 | 0F7798 | 1 | BAFFLE, INTAKE |
| 12 | 049813\* | 10 | NUT HEX M6 X 1.0 | 53 | 0F8380 | 1 | FOAM, TOP INTAKE BAFFLE |
| 8 | 04d662 | 14 | SCREW HHTR 5/16-18 X 3/4" (7KW) | 54 | 0D3472 | 1 | GROMET OVAL 31.75 X 50.8 |
| 10 | 04d662 | 14 | SCREW HHTR 5/16-18 X 3/4" (7KW) | 55 | 0C8285 | 1 | BRACKET, BATTERY SUPPORT |
| 9 | 0f8871 | 1 | SCROLL, FAN (7KW, 10KW) | 56 | 0D3167 | 1 | GASKET, BATTERY SUPPORT BRACKET |
| 10 | 0f8874 | 1 | PANEL, ALTERNATOR DIVider (7KW) | 58 | 0A3116 | 3 | SCREW HMC, M-1.0 X 12 G8.7 (8KW) |
| 10 | 0f8915 | 1 | PANEL, ALTERNATOR DIVider (10KW) | 58 | 0A3116 | 3 | SCREW HMC, M-1.0 X 12 G8.8 |
| 10 | 0f6558 | 1 | PANEL, ALTERNATOR DIVider | 59 | 067297 | 1 | CONTACTOR, STARTER (7KW) |
| 11 | 092120 | 1 | NUT LOCK TRIC M6 X 1.0 | 60 | 0F8039 | 1 | MOUNTING CLIP |
| 12 | 0f7825 | 1 | FOAM, MUFFLER BOX FRONT | 61 | 022127 | 1 | NUT HEX 1/4-20 (7KW) |
| 12 | 0f7824 | 1 | FOAM, MUFFLER BOX END | 62 | 038004A0J | 1 | CABLE, #6 RED BATTERY 38.5" |
| 14 | 0f6549 | 1 | ENCLOSURE, EXHAUST SIDE | 63 | 0F8487 | 1 | GASKET, FRONT DIVIDER |
| 15 | 0f7824A | 1 | FOAM, MUFFLER BOX END | 63 | 0F8434 | 1 | GASKET, FRONT DIVIDER (10KW) |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
Control Panel – Drawing No. 0F9695-C

* * *

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0E7886A | 1 | CIRCUIT BREAKER 30A X 2P 240V (7KW) |  | 0D9784 | 2 | NUT HEX LOCK M3-0.5 NYLON INSERT (7KW) |  |
|  | 0E7886D | 1 | CIRCUIT BREAKER 45A X 2P 240V (10KW) |  | 24 | 0D8502 | 1 | NEUTRAL BLOCK |
|  | 0E7886K | 1 | CIRCUIT BREAKER 55A X 2P 240V (13KW) |  | 25 | 031879 | 4 | WASHER FLAT #4 |
|  | 0E7886J | 1 | CIRCUIT BREAKER 65A X 2P 240V (16KW) |  | 26 | 0F5433 | 2 | WASHER FLAT #4 (7KW) |
| 2 | 0A1801 | 1 | ASSEMBLY, BATTERY CHARGER ENGINE |  |  | 0F5437 | 1 | HARNESS, CONTROL PANEL WIRE (NOT SHOWN) (7KW) |
| 3 | 0F9719 | 1 | ASSEMBLY, POTTED REGULATOR |  |  |  |  |  |
| 4 | 0C2174 | 1 | RELAY, 12V 25A SPST (NON 7KW) | 27 | 074908 | 4 | SCREW HHTT, M5-0.8 x 10 BP |  |
| 5 | 075210A | 1 | BLOCK TERMINAL 1 POSITION | 28 | 049813 | 1 | NUT HEX M6-1.0 |  |
| 6 | 038750 | 1 | SCREW HHC M6-1.0 x 30mm | 29 | 082025 | 6 | NUT HEX LOCK M5-0.8 NYLON INSERT |  |
| 7 | 0F8992 | 1 | ASSEMBLY, HOME STANDBY CONTROLLER | 30 | 0G0627 | 1 | XFMR 240/16V 1VA&56VA W/PTC |  |
|  | 0F1504 | 1 | ASSEMBLY, HOME STANDBY CONTROLLER (7KW) | 31 | 022507 | 2 | SCREW HHC 1/4"-20 x 1/2" |  |
|  |  | 1 | ASSEMBLY, HOME STANDBY CONTROLLER (7KW) | 32 | 022097 | 3 | WASHER LOCK M6-1/4" |  |
| 8 | 032300 | 1 | HOLDER, FUSE | 33 | 046689 | 1 | TERMINAL STRIP 4 POSITION |  |
| 9 | 022676 | 1 | FUSE, 15 AMP X AGC15 | 34 | 063617 | 1 | RELAY PANEL 12VDC DPDT 10A 240VAC |  |
| 10 | 0E4494 | 1 | SWITCH, ROCKER DPDT ON-OFF-ON | 35 | 075475 | 2 | SCREW PPHM M4-0.7 x 10mm |  |
| 11 | 0E7890 | 1 | CIRCUIT BREAKER MOUNTING BRACKET | 36 | 043180 | 2 | WASHER FLAT M4 |  |
| 12 | 023484E | 1 | SNAP BUSHING | 37 | 0F8041 | 1 | COVER, CONTROL PANEL COMPONENT |  |
| 13 | 075476 | 4 | SCREW PPHM M4-0.7 x 16mm |  | 0F9283 | 1 | COVER, CONTROL PANEL COMPONENT (7KW) |  |
| 14 | 043182 | 2 | M3 LOCK WASHER (NON 7KW) | 38 | 045770 | 2 | SCREW HHC M5-0.8 x10mm |  |
| 15 | 0E6480 | 6 | NUT HEX LOCK M4-0.7 NYLON INSERT | 39 | 0E7866 | 1 | COVER, CONTROL PANEL |  |
| 16 | 0D4804A | 1 | CURRENT TRANSFORMER, IDLE CONTROL (NON 7KW) |  | 0E7867 | 1 | COVER, CONTROL PANEL (7KW) |  |
| 17 | 0C1085 | 12 | SCREW PPHM M3-0.5 x 8mm |  | 0D3700 | 8 | NUT FLANGE M6-1.0NYLOK |  |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
Transfer Switch Assembly – Drawing No. 0F9774-B

* * *

ITEM PART NO. QTY. DESCRIPTION

ITEM PART NO. QTY. DESCRIPTION

|  |  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0F8278 | 1 | BOX LOAD CENTER | 21 | 074138 | 2 | LUG QUICK DISCONNECT NI-S 10X45 DEG BRASS / TIN |  |
| 2 | 0D4800 | 1 | COVER, 8 CIRCUIT LOAD CENTER |  |  |  |  |  |
|  | 0F5211 | 1 | COVER, 10 CIRCUIT LOAD CENTER | 22 | 036933 | 6 | SCREW PPHM #10-32 X 3/8" |  |
|  | 0D3092 | 1 | COVER, 12 CIRCUIT LOAD CENTER | 23 | 077033 | 6 | LUG SLDLSS 1/0/#14X9/16 AL/CU |  |
|  | 0F8312 | 1 | COVER, 16 CIRCUIT LOAD CENTER | 24 | 048850 | 1 | BLOCK TERMINAL 20A 5 X 6 X 1100V |  |
| 3 | 0C2237 | 1 | TRANSFER SWITCH HOME STANDBY 100A 2P 250V | 25 | 028739 | 4 | TIE WRAP 3.9' X.10" |  |
|  |  |  |  | 26 | 0A2110 | 4 | SCREW SWAGE 1/4-20 X 1/2" ZINC |  |
| 3A | 077220 | 1 | COIL UTILITY | 27 | 0D3191 | 1 | COVER, RELAY & TERMINAL BLOCK |  |
| 3B | 077220A | 1 | COIL STANDBY | 28 | 0D3088 | 1 | WIRE HARNESS, LOAD CENTER (NOT SHOWN) |  |
| 3C | 082574 | 1 | INSULATOR-SIDEWALL (NOT SHOWN) |  |  |  |  |  |
| 3D | 084464 | 1 | LIMIT SWITCH OPERATION (NOT SHOWN) | 29 | 073591 | 2 | FUSE HOLDER |  |
|  |  |  |  | 30 | 073590A | 2 | FUSE 5A |  |
| 4 | 074908 | 6 | SCREW HHTT M5-0.8 X 10 | 31 | 040213B | 4 | SUPPORT SNAP-IN 1-3/8" |  |
| 5 | 024912 | 1 | SCREW HHTT 1/4-20 X 5/8 |  |  |  |  | 8 10 12 16 CIR. |
| 6 | 0A1658 | 1 | LOCK WASHER, SPECIAL-1/4" | 32 | 0E7888 | A/R | CIR. BREAKER 20A 2P | 1 1 |
| 7 | 063617 | 1 | RELAY PANEL 12VD DPDT 10A @240VAC | 33 | 0E7888A | A/R | CIR. BREAKER 30A 2P | 1 1 1 |
| 8 | 0E7889A | 1 | 8 CIRCUIT LOAD CENTER | 34 | 0E7888B | A/R | CIR. BREAKER 15A 1P | 5 3 5 5 |
|  | 0E7889 | 1 | 12 CIRCUIT LOAD CENTER (ALSO USED FOR 10 CIRCUIT) | 35 | 0E7888C | A/R | CIR. BREAKER 20A 1P | 1 3 3 5 |
|  |  |  |  | 36 | 0E7888D | A/R | CIR. BREAKER 40A 2P | 1 1 |
|  | 0F9213 | 1 | 16 CIRCUIT LOAD CENTER | 37 | 0E7888E | A/R | CIR. BREAKER 50A 2P | 1 |
| 9 | 0A1495 | 4 | SCREW HHTT M4-0.7 X 10 | 38 | 0D3320 | 1 | COVER - HARNESS ENTRY |  |
| 10 | 0A1661 | 2 | RIVET POP. 156" X. 675" | 39 | 0F5439 | 1 | HARNESS, 8 CIRCUIT LOAD CENTER TO EXT CONN BOX |  |

$$
1 0 ^ {\\prime \\prime}
$$

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
13 & 16kW, GT-990 Engine – Drawing No. 0F9430-K - Part 1

* * *

ITEM PART NO. QTY. DESCRIPTION

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0C5729 | 1 | ASSEMBLY, CRANKCASE HOUSING WITH SLEEVE | 34 | 043790 | 1 | BARBED ELBOW 90 3/8NPT X 3/8 |
|  |  |  |  | 35 | 0E9842 | 1 | SEAL, 42 I.D. CRANKSHAFT |
| 2 | 0E9843 | 1 | SEAL, 38 I.D. CRANKSHAFT | 36 | 0C5731 | 1 | ASSEMBLY, HOUSING COVER WITH SLEEVE |
| 3 | 090388 | 3 | SCREW, TAPTITE M6-1.0 X 12 YC |  |  |  |  |
| 4 | 0C5372 | 1 | ASSEMBLY, BREATHER | 37 | 0C3006 | 10 | SCREW, HHFC M10-1.5 X 55 |
| 5 | 0C3005 | 1 | GASKET, BREATHER COVER | 38 | 080318 | 8 | SCREW HHFC M6-1.0 X 25 |
| 6 | 0E3372B | 1 | SEPARATOR, OIL BREATHER | 39 | 093064 | 1 | ASSEMBLY, OIL FILL CAP |
| 7 | 0D8067A | 1 | ASSEMBLY, HEAD #1 G&S | 40 | 0G1839 | 2 | LIFT HOOK GT90/760 |
| 8 | 071983 | 4 | RETAINER, PISTON PIN 20 | 41 | 0D2723D | 1 | ROCKER, COVER WITH OIL FILL |
| 9 | 0C2981F | 1 | ROCKER, COVER NO OIL FILL | 42 | 0C2979 | 2 | GASKET, VALVE COVER |
| 11 | 0E2985 | 2 | PISTON, HC | 43 | 086515 | 8 | KEeper, VALVE SPRING |
| 12 | 021533 | 2 | SET, PISTON RING 90MM | 44 | 0D2274 | 4 | RETAINER, VALVE SPRING |
| 13 | 0E1466 | 2 | PIN PISTON | 45 | 0D3867 | 4 | SPRING, VALVE |
| 14 | 0D4041 | 1 | ASSEMBLY, CAMSHAFT & GEAR | 46 | 078672 | 2 | SEAL, VALVE STEM D7 |
| 15 | 0C2977 | 1 | GASKET, CRANK CASE | 47 | 0C5371 | 4 | WASHER, VALVE SPRING |
| 16 | 0C5943 | 1 | SEAL, OIL PASSAGE | 48 | 072694 | 4 | STUD, ROCKER ARM PIVOT |
| 17 | 0G0140E | 1 | ASSEMBLY, CRANKSAFT HORIZONTAL DIRECT DRIVE | 49 | 0D5313 | 4 | ROCKER ARM |
| 18 | 0E3223 | 2 | ASSEMBLY, CONNECTING ROD | 50 | 0D3998 | 4 | NUT HEX M8-1.0 G8 YEL CHR |
| 19 | 0D2157 | 2 | SCREW SHC M6-1.0 X 50 G8.8 | 51 | 0D6024 | 2 | PLATE, PUSH ROD GUIDE |
| 20 | 0E6098 | 1 | SCREEN, OIL PICKUP | 53 | 0C2976 | 12 | SCREW HHFC M8-1.25 X 65 |
| 21 | 0D4123A | 1 | ASSEMBLY, OIL PUMP | 54 | 0C2229 | 2 | VALVE, INTAKE |
| 22 | 0E8152 | 1 | O-RING, 49 ID X .07 THICK | 55 | 083897 | 4 | TAPPET, SOLID |
| 23 | 0C3011 | 2 | COVER, OIL RELIEF | 56 | 0D8067B | 1 | ASSEMBLY, HEAD #2 G&S |
| 24 | 0C3009 | 2 | SPRING, OIL RELIEF | 57 | 0D9853D | 4 | PUSHROD, 147 |

ITEM PART NO. QTY. DESCRIPTION

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
13 & 16kW, GT-990 Engine – Drawing No. 0F9430-K - Part 2

* * *

ITEM PART NO. QTY. DESCRIPTION

| 64 | 022145 | 1 | WASHER FLAT M8 - 5/16 | 110 | 0D1143 | 1 | WRAPPER, UPPER CYLINDER 2 |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 65 | 0C5136A | 2 | KNOB, AIR CLEANER | 111 | 0E9323 | 1 | STARTER MOTOR HEAR REDUCED 1KW |
| 66 | 0C0324 | 1 | COVER, AIRBOX NG/LP | 112 | 061906 | 2 | SCREW HHC M8 - 1.25 X 85 G8.8 |
| 67 | 0C0340 | 1 | PRE-CLEANER, | 113 | 022129 | 1 | WSER LOCK M8 - 5/16 |
| 68 | 0C8127 | 1 | ELEMENT, AIR CLEANER | 114 | 0F1177 | 1 | ASSEMBLY, GROUND WIRE |
| 69 | 0F9255 | 1 | ASSEMBLY, MXER/AIRBOX 990 | 115 | 022097 | 6 | WSER LOCK M8 - 1/4 |
| 70 | 0E9582 | 4 | SCREW SHLDR(BM) M6-1.0 X 21 | 116 | 0G3111 | 4 | SCREW TAPTITE M6 - 1.0 X 25 ZINC |
| 71 | 0D4417 | 4 | WASHER, RUBBER 1'4 X 1/8" THICK | 117 | 0G0798A | 1 | ASSY, IGN COIL WIDIODE, CYLINDER 1 |
| 72 | 0E7585A | 2 | SPRARKPLUG, RC14YC GAP: 0.040" | 118 | 0G0798B | 1 | ASSY, IGN COIL WIDIODE, CYLINDER 2 |
| 73 | 0E6043 | 2 | SCREW TAPTITE M5 - 0.8 X 8 | 119 | 0E9568 | 1 | ASSY, THROTTLE SHAFT |
| 74 | 0D1142A | 1 | WRAPPER, LOWER CYLINDER 2 | 120 | 0E9566 | 2 | THROTTLE VALVE |
| 75 | 0C3025 | 1 | SWITCH, OIL PRESS | 121 | 074027 | 4 | SCREW PHPM M3 - 0.5 X 5 |
| 76 | 0C7292 | 1 | NIPPLE, %-16 UNF | 122 | 0C3044 | 1 | COVER, DUST, MIX/AIRBOX |
| 77 | 070185B | 1 | OIL FILTER | 123 | 0C4756 | 1 | SPRING, IDLE ADJUST |
| 78 | 0D3083 | 1 | ASSY, OIL DRAIN HOSE | 124 | 075477 | 1 | SCREW PHPM M5 - 0.58 X 20 |
| 79 | 0F2094 | 2 | SCREW M3 - 0.5 X 6 SEMS | 125 | 043116 | 2 | SCREW HHC M6 - 1.0 X 12 |
| 80 | 094090 | 1 | SWITCH, THERMAL 293F | 126 | 0E1644 | 1 | SCREW BHSC M6-1.0 X 12 SS |
| 81 | 035461 | 2 | BARBED STRAIGHT 1/4PT X 3/8 | 127 | 0E9572 | 1 | BRACKET, STEPPER MOTOR |
| 82 | 0G3662 | 4 | CLAMP, HOSE OETIKER STEPLESS 17mm | 128 | 0D9784 | 1 | NUT HEX LOCK M3 - 0.5 NYLON INSERT |
| 83 | 0G0286 | 2 | HOSE, 3'/8" I.D. X 6" LG | 130 | 0D6342 | 1 | ASSY, CONTROLLER |
| 84 | 0E9506 | 1 | COOLER, OIL | 131 | 0E9570 | 1 | BALL STUD, 10MM |
| 85 | 0C9764 | 4 | SCREW PLASTITE 1/4-15 X 3/4 | 132 | 0E9577 | 1 | ASSY, THROTTLE ROD |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
10kW, GT-530 Engine – Drawing No. 0F9429-G - Part 1

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | OE9428B | 1 | CRANKCASE |
| 2 | OE3812 | 2 | SEAL D 35 X 48.2 |
| 3 | OC8566 | 2 | SCREW HHFC M6 – 1.0 X 20 |
| 4 | OE9367A | 1 | ASSY, BREATHER |
| 5 | OE9366 | 1 | GASKET BREATHER ASSY |
| 6 | OE9304 | 1 | CYLINDER HEAD 1 |
| 7 | OE9334C | 1 | COVER, ROCKER PLAIN |
| 8 | 076390 | 4 | PISTON PIN RETAINER RING |
| 9 | 076389 | 2 | PISTON PIN |
| 10 | 088057 | 2 | PISTON |
| 11 | 088411 | 2 | PISTON RING SET |
| 12 | OE9322A | 2 | ASSY CONNECTING ROD |
| 13 | OE9407A | 1 | ASSY, CAM & GEAR |
| 14 | OE9350 | 1 | GASKET CRANKCASE |
| 15 | OE9318E | 1 | ASSY CRANKSHAFT W/PLUG |
| 16 | 043116 | 3 | SCREW HHC M6 – 1.0 X 12 |
| 17 | 093873 | 3 | WASHER LOCK M6 RIBBED |
| 18 | OG0272 | 1 | ASSY GEROTOR |
| 19 | OE9482 | 1 | SPRING OIL PRESSURE RELIEF |
| 20 | OA5776 | 1 | BALL 11/32 DIA PRESSURE RELIEF |
| 21 | OC5315A | 1 | GEROTOR OUTER 9MM THICK |
| 22 | OC5314A | 1 | GEROTOR INNER 9MM THICK |
| 23 | OE9473 | 1 | GEAR COVER |
| 24 | 073144 | 9 | SCREW HHFC M8 – 1.25 X 45 |
| 25 | OC3027 | 2 | O-RING 3/8 X 1/2 |
| 26 | OE9358 | 1 | SCREEN OIL PICK-UP |
| 27 | 093064 | 1 | ASSY, OIL FILL CAP |
| 28 | OE9334A | 1 | COVER, ROCKER, W/FILL |
| 29 | OE9352 | 2 | GASKET, VALVE COVER |
| 30 | OC3592 | 8 | KEEPER, VALVE SPRING |
| 31 | OC3733 | 4 | VALVE RETainer |
| 32 | OC4390 | 4 | SPRING VALVE |
| 33 | 088156 | 2 | SEAL, VALVE STEM |
| 34 | 084186 | 4 | WASHER, VALVE SPRING |
| 35 | OE9368 | 2 | SPARKPLUG |
| 36 | 077168 | 12 | SCREW HHC M8 – 1.25 X 56 |
| 37 | OE9305 | 1 | CYLINDER HEAD 2 |
| 38 | OC3590 | 2 | VALVE EXHAUST |
| 39 | OE9351 | 2 | GASKET CYLINDER HEAD |
| 40 | OC3591 | 2 | VALVE INTAKE |
| 41 | 083235 | 4 | TAPPET, SOLID |
| 42 | OE9455E | 4 | PUSHROD, ALUMINUM |
| 43 | OE9353A | 2 | PLATE, PUSH ROD GUIDE |
| 44 | 076307 | 4 | NUT JAM (ROCKER ARM) |
| 45 | 077160 | 4 | ROCKER ARM |
| 46 | 077161 | 4 | STUD ROCKER ARM PIVOT |
| 47 | OG0273 | 1 | GASKET KIT |
| 48 | OG0274 | 1 | BREATHER KIT |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
10kW, GT-530 Engine – Drawing No. 0F9429-G - Part 2

* * *

ITEM PART NO. QTY. DESCRIPTION

| 58 | 022097 | 3 | WASHER LOCK M6-1/4 | 89 | 070185B | 1 | OIL FILTER |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 59 | 0E9561 | 1 | INTAKE ADAPTER | 90 | 094090 | 1 | THERMAL SWITCH |
| 60 | 0E9472 | 1 | GASKET, AIRBOX TO CARB/MIXER | 91 | 0F2094 | 2 | SCREW PPHM M3-0.5 X 6 SEMS |
| 61 | 0E9471 | 1 | GASKET, MANIFOLD TO CARB/MIXER | 92 | 0D3083 | 1 | ASSEMBLY, OIL DRAIN HOSE |
| 62 | 078643B | 4 | BOLT, CARB MOUNT M6 - 1.0 X 85 | 93 | 0A8584 | 1 | OIL PRESSURE SWITCH |
| 63 | 0D9784 | 1 | NUT HEX LOCK M3 - 0.5 | 94 | 082774 | 1 | KEY, WOODRUFF 4 X 19D |
| 64 | 0E9584 | 1 | ASSY, CONTROLLER | 95 | 0E7209 | 1 | ASSY, GROUNDING WIRE |
| 65 | 0D6342 | 1 | BALL STUD, 10 MM | 96 | 0E9514B | 1 | ASSY IGNITION COIL CYLINDER 1 |
| 66 | 0E9587 | 1 | ASSY, THROTTLE ROD |  | 0E9514C | 1 | ASSY IGNITION COIL CYLINDER 2 |
| 67 | 0C9997 | 1 | GUARD, FAN | 97 | 026850 | 4 | WASHER SHAKEPROOF EXT 1/4 |
| 68 | 0E9319 | 1 | GASKET INTAKE | 98 | 0E9443 | 1 | ASSY, MIXER DUAL FUEL |
| 69 | 0E9597 | 1 | BREATHER HOSE | 99 | 0G3662 | 4 | CLAMP, HOSE OETIKER STEPLESS 17mm |
| 70 | 040976 | 4 | SCREW SHC M8 - 1.25 X 20 G12.9 |  |  |  |  |
| 71 | 022129 | 2 | WASHER LOCK M8 - 5/16 | 100 | 0G0286 | 1 | HOSE 3/8"ID X 6" SAE J30R9 |
| 72 | 061906 | 2 | SCREW HHC M8 - 1.25 X 85 | 101 | 0G0479 | 1 | HOSE 3/8"ID X 7.25 SAE J30R9 |
| 73 | 0E9323 | 1 | STARTER MOTOR | 102 | 0E9340 | 1 | BACKING PLATE |
| 74 | 0E9507 | 6 | SCREW HHFC M8 - 1.25 X 14 | 103 | 0E9525C | 1 | ASSY, FLYWHEEL & RING GEAR |
| 75 | 0E9362 | 2 | LIFTING HOOK | 104 | 0E9486 | 1 | FAN, FLYWHEEL, 20 FIN, 218.8 OD |
| 76 | 0E9337 | 1 | WRAPPER OUTER CYLINDER 1 | 105 | 0A5992 | 2 | WASHER LOCK INT M8 |
| 77 | 0E9339 | 1 | WRAPPER INNER CYLINDER 1 | 106 | 048571 | 2 | SCREW HHC M8 - 1.25 X 10 |
| 78 | 0E9402 | 1 | TUBE, DIPSTICK | 107 | 067890 | 1 | NUT HEX M20 - 1.5 |
| 79 | 0F2664H | 1 | ASSY, DIPSTICK /TEXT | 108 | 067198N | 1 | WASHER BELV - 20 X 2.2 |
| 80 | 0E9336F | 1 | BLOWER HOUSING | 109 | 0C3032 | 1 | PLATE, FAN |

ITEM PART NO. QTY. DESCRIPTION

$$
3 / 8" I D
$$

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
7kW, GN-410 Engine – Drawing No. 0F9428-C - Part 1

45

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | 0E3221 | 1 | ASSEMBLY, CONNECTING ROD |
| 2 | 0E1466 | 1 | PIN, PISTON D20 |
| 3 | 021533 | 1 | SET, PISTON RING 90MM |
| 4 | 0E2985 | 1 | PISTON, HC |
| 5 | 071983 | 2 | RETAINER, PISTON PIN 20 |
| 6 | 0E8440 | 1 | ASSEMBLY, CRANKSHAFT GH410 SMALL TAPER |
| 7 | 0A7628 | 1 | ARM, GOVERNOR RC45 |
| 8 | 078658 | 1 | PIN, "R" GOVERNOR ARM |
| 9 | 078659 | 2 | WASHER, GOVERNOR ARM THRUST |
| 10 | 088261E | 1 | CRANKCASE, SUBASSEMBLY WITH PLUGS GH410 |
| 11 | 0E3812 | 2 | SEAL, 35 I.D. CRANKSHAFT |
| 12 | 0E6519 | 1 | ASSEMBLY, GOVERNOR GEAR |
| 13 | 078645 | 1 | C-RING, GOVERNOR GEAR RETAINER |
| 14 | 0A7811 | 1 | SPOOL, GOVERNOR- MACHINE |
| 15 | 0G3358 | 1 | ASSEMBLY, CAMSHAFT & GEAR 410HSB |
| 16 | 076701 | 1 | GASKET , CRANKCASE |
| 17 | 021713B | 1 | GASKET, HEAD 410 |
| 18 | 078691 | 1 | COVER, OIL PRESSURE RELIEF |
| 19 | 0A5771 | 1 | SPRING, OIL RELIEF 360 |
| 20 | 0A5776 | 1 | BALL, DIA 11/32 PRESSURE RELIEF |
| 21 | 076361 | 1 | WASHER, THRUST GOVERNOR GEAR |
| 22 | 0A8898D | 1 | ASSEMBLY, COVER, GEAR TOP CHECK / FILL |
| 23 | 0D2274 | 2 | RETAINER, VALVE SPRING |
| 24 | 0C4391 | 1 | VALVE SPRING LF |
| 25 | 086025 | 2 | SET,GEROTOR 12 THK |
| 26 | 0E3341 | 1 | BALANCER |
| 27 | 021714 | 1 | ASSEMBLY,CYLINDER HEAD SEATS & GUIDES |
| 28 | 086516 | 1 | VALVE, EXHAUST |
| 29 | 086517 | 1 | VALVE, INTAKE |
| 30 | 0D9853B | 2 | PUSH ROD 174.9 |
| 31 | 083897 | 2 | TAPPET |
| 32 | 077158 | 1 | ASSEMBLY, SCREEN OIL PICK-UP |
| 33 | 0C3150 | 1 | GASKET, ROCKER COVER 410 |
| 34 | 072694 | 2 | STUD,D20 PIVOT BALL |
| 35 | 083907 | 2 | ROCKER ARM |
| 36 | 0D3998 | 2 | NUT, JAM (ROCKER ARM) |
| 37 | 078694 | 1 | PLATE, PUSH ROD GUIDE |
| 38 | 021742 | 4 | SCREW,HHFL M10-1.5 X 105 |
| 39 | 0D6094 | 1 | ASSEMBLY, ROCKER COVER BREATHER |
| 40 | 076329 | 1 | PLUG, OIL FILL PLASTIC |
| 41 | 0E0057 | 1 | O-RING 17.8 I.D. x 2.4 |
| 42 | 0D4788 | 1 | PLUG, STANDARD PIPE 3/8 STEEL SQUARE HEAD |
| 43 | 074908 | 1 | SCREW,TAPTITE M5-0.8 X 10 BP |
| 44 | 086515 | 4 | KEEPER, VALVE SPRING |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
7kW, GN-410 Engine – Drawing No. 0F9428-C - Part 2

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | 0C1069 | 5 | SCREW, TAPTITE M6-1.0X8 YELLOW CHROME |
| 2 | 0D2922 | 1 | HOUSING, BLOWER |
| 3 | 0F8426 | 1 | TUBE, DIPSTICK |
| 4 | 0C9997 | 1 | GUARD, FAN |
| 5 | 088434 | 1 | WRAPPER, BOTTOM |
| 6 | 045756 | 11 | SCREW, TAPTITE M6-1X10 YELLOW CHROME |
| 7 | 0C4176A | 1 | WRAPPER, TOP |
| 8 | 0D9004A | 1 | ASSY, STARTER |
| 9 | 059985 | 2 | SCREW, SHC M8-1.25 X 45 G12.9 |
| 10 | 022129 | 3 | WASHER, LOCK M8-5/16 |
| 11 | 0C2458A | 1 | BACKPLATE, L/F D/F |
| 12 | 083512 | 1 | SCREW, TAPTITE M8-1.25 X 16 BP |
| 13 | 0D1401A | 1 | BREATHER TUBE |
| 14 | 091039 | 1 | GASKET, INTAKE ADAPTER |
| 15 | 0C9619 | 1 | ASSEMBLY, PLASTIC CARB |
| 16 | 049811 | 2 | WASHER, FLAT M6 |
| 17 | 022097 | 4 | WASHER, LOCK M6-1/4 |
| 18 | 040945 | 2 | SCREW, SHC M6-1.0 X 20 G12.9 |
| 19 | 086999 | 1 | GASKET,OIL FILTR ADAPTER |
| 20 | 0D5667A | 1 | ADAPTER, OIL FILTER |
| 21 | 049821 | 2 | SCREW, SHC M8-1.25 X 30 G12.9 |
| 22 | 099236 | 1 | SWITCH, OIL 8.0 PSI |
| 23 | 070185B | 1 | OIL FILTER |
| 24 | 082774 | 1 | KEY, WOODRFF 4 X 19D |
| 25 | 091222E | 1 | FLYWHEEL WITH RING GEAR 32DEG. |
| 26 | 067198N | 1 | WASHER.BELV-20 X 2.2 |
| 27 | 067890 | 1 | NUT, HEX - FLYWHEEL |
| 28 | 0E7585 | 1 | SPARKPLUG |
| 29 | 072734 | 1 | ASSEMBLY.GOVERNOR LEVER 12 HP |
| 30 | 072735 | 1 | ROD,GOVERNOR CONTROL. |
| 31 | 0C3978 | 1 | SPRING, ANTI-LASH |
| 32 | 0C6040 | 1 | ASSEMBLY, WIRE |
| 33 | 0D9760 | 1 | ASSEMBLY, IGNITION COIL |
| 34 | 0G3111 | 2 | SCREW, TAPTITE M6-1.0 X 25 ZINC |
| 35 | 0F3800 | 1 | SPRING GOVERNOR |
| 36 | 083502 | 1 | BOLT, GOVERNOR ADJUST M5 |
| 37 | 082025 | 1 | NUT HEX LOCK M5-DRAIN HOSE |
| 38 | 0D3083 | 1 | ASSEMBLY, CAP & DIPSTICK |
| 39 | 0E7887C | 1 | ASSEMBLY, CAP & DIPSTICK |
| 40 | 090072 | 1 | O-RING 9/16 X 3/4 X 3/32 |
| 41 | 094090 | 1 | SWITCH, THERMAL 293F |
| 42 | 022145 | 1 | WASHER FLAT 5/16 - M8 |
| 43 | 0F2094 | 2 | SCREW, M3-0.5 X 6 SEMS |
| 44 | 0C4373 | 1 | SPACER ENDFRAME |

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
7kW, GN-410 Engine – Drawing No. 0F9422-C

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | 0F8186 | 1 | ADAPTOR, ENGINE |
| 2 | 0F5540H | 1 | STATOR |
| 3 | 0C9304H | 1 | ROTOR |
| 4 | 0F7774A | 1 | CARRIER, REAR BEARING |
| 5 | 0C8096 | 1 | FAN, 8" CURVED BLADE |
| 6 | 0F6591 | 1 | MUFFLER |
| 7 | 0F8078 | 1 | TAIL PIPE, MUFFLER |
| 9 | 056482 | 1 | BEARING |
| 10 | 0C3168 | 3 | 5/16 SPECIAL L/WASH |
| 11 | 056147 | 1 | BOLT ROTOR HHCS 5/16"-24 X 13-1/2" G5 |
| 12 | 0D1847 | 4 | BOLT STATOR IHHCS M8-1.25 x 305mm |
| 13 | 0C7038C | 1 | BRACKET, ALTERNATOR MOUNTING |
| 14 | 0F9445 | 1 | DUCT, ALTERNATOR AIR |
| 15 | 0F9497 | 1 | GASKET, ALTERNATOR AIR DUCT |
| 16 | 0C7038B | 1 | BRACKET, ENGINE MOUNTING |
| 17 | 0C7758 | 4 | RUBBER MOUNT |
| 18 | 0388050AEC0 | 1 | CABLE, #6 40" BLACK BATTERY |
| 19 | 0C2417A | 1 | EARTH STRAP 3/8X 3/8 |
| 20 | 0F6528 | 1 | EXHAUST FLEX |
| 21 | 066386 | 1 | ASSEMBLY BRUSH HOLDER |
| 22 | 029451 | 1.8 FT | TAPE ELEC UL FOAM 1/8 X 1/2 |
| 23 | 049451 | 1 | WASHER FLAT .406ID X 1.62OD |
| 24 | 022237 | 4 | WASHER LOCK 3/8 |
| 25 | 022511 | 4 | BOLT HHC 3/8-16 X 1-1/4 G5 |
| 26 | 022131 | 4 | WASHER FLAT 3/8 |
| 27 | 039287 | 4 | SCREW HHC M8-1.25 X 45 G8.8 |
| 28 | 022145 | 18 | WASHER FLAT 5/16 |
| 29 | 049820 | 4 | NUT LOCK HEX M8-1.25 NYL INSRT |
| 30 | 090388 | 8 | SCREW TAP M6-1.0X12 |
| 31 | 022129 | 17 | WASHER LOCK M8-5/16 |
| 32 | 022259 | 8 | NUT HEX 5/16-18 |
| 33 | 059637 | 2 | SCREW TAPTITE 3/8-16X 3/4" |
| 34 | 048031K | 3 | BAND, HOSE CLAMP 35.05 DIA. |
| 35 | 0C9592 | 1 | BELLOWS |
| 36 | 048031M | 2 | HOSE CLAMP 3/4" |
| 37 | 040976 | 2 | SCREW SHC M8-1.25 X 20 G12.9 |
| 38 | 0G0414 | 1 | PLATE "HOT" |
| 39 | 0D5823 | 3 | U-BOLT 5/16"-18 X 1.62" W/SADDLE |
| 40 | 090239 | 1 | GASKET, EXHAUST |
| 41 | 0C6989 | 1 | STINGER, ENGINE AIR IN |
| 42 | 0D1214 | 1 | BASE, AIR CLEANER |
| 43 | 0C8127 | 1 | ELEMENT, AIR CLEANER |
| 44 | 0C3024 | 1 | COVER, AIR CLEANER NG/LP |
| 45 | 0D2273 | 1 | TUBE, 1.25"O.D. x 20Ga. x 12.125" LONG |

$$
8"
$$

$$
4 0"
$$

* * *

Section 9 — Exploded Views and Parts Lists

Air-cooled Generators
10, 13, and 16kW, V-twin Generators – Drawing No. 0F9423-C

* * *

ITEM PART NO. QTY. DESCRIPTION

|  |  |  |  |  |  |  |  |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 1 | 0F8186 | 1 | ADATOR, ENGINE | 34 | 0D4662 | 3 | SCREW 5/16-18 X 3/4" |
| 2 | 0F6694 | 1 | STATOR (16KW) | 35 | 0F7065 | 3 FT | HOSE RES ½ LP GAS |
|  | 0F5538 | 1 | STATOR (13KW) | 36 | 048031M | 4 | HOSE CLAMP ¾" I.D. |
|  | 0F7548 | 1 | STATOR (10KW) | 38 | 0G0414 | 1 | PLATE, "HOT" |
| 3 | 0F9795 | 1 | ROTOR (16KW) | 39 | 0D5823 | 3 | U-BOLT 5/16-18 X 1.62" WITH SADDLE |
|  | 0F5539 | 1 | ROTOR (13KW) | 40 | 0E9369 | 2 | GASKET, EXHAUST PORT (10KW) |
|  | 0F7549 | 1 | ROTOR (10KW) |  | 0C4138 | 2 | GASKET, EXHAUST PORT |
| 4 | 0F7774 | 1 | CARRIER, REAR BEARING | 41 | 040173 | 2 | CLAMP HOSE #5.5 0.62" -0.62"(10KW) |
| 5 | 0E9579 | 1 | FAN, 12" CURVED BLADE | 42 | 074995 | 1.44 FT | HOSE ¼ ID LPG 350PSI UL21 (10KW) |
|  | 0F8998 | 1 | FAN, 12" CURVED BLADE (10KW) | 43 | 066849 | 2 | SCREW HHTTT M5-0.8 X 16 |
| 6 | 0F6591 | 1 | MUFFLER | 44 | 0F7799 | 1 | EXHAUST MANIFOLD |
| 7 | 0F8078 | 1 | TAIL PIPE, MUFFLER |  | 0F8115 | 1 | EXHAUST MANIFOLD (10KW) |
| 8 | 0F7797 | 1 | FLEX BASE | 45 | 0F7796 | 1 | FLEX COVER |
|  | 0F8141 | 1 | FLEX BASE (10KW) |  | 0F8204 | 1 | FLEX COVER (10KW) |
| 9 | 056482 | 1 | BEARING | 46 | 0F5385 | 1 | FLEX COVER EXTENSION (10KW) |
| 10 | 0C3168 | 3 | 5/16 SPECIAL LOCK WASHER | 47 | 090388 | 13 | SCREW TAPTITE M6-1.0 X 12 |
| 11 | 0D1838 | 1 | BOLT, IHHCS 3/8"24 X 15.50" | 48 | 045771 | 4 | NUT HEX M8-1.25 |
| 12 | 0D1846 | 1 | BOLT, IHHCS M8-1.25 X 345mm | 49 | 039253 | 2 | SCREW HHC M8-1.25 X 20 |
| 13 | 0C7038 | 1 | BRACKET, ALTERNATOR MOUNTING | 50 | 0F0710 | 5 | RIVET POP 0.125" X 0.337"(10KW) |
| 14 | 0F9396 | 1 | DUCT, ALTERNATOR AIR |  | 0F0710 | 2 | RIVET POP 0.125" X 0.337" |
| 15 | 0D2559 | 1 | GASKET, ALTERNATOR AIR DUCT | 51 | 0f8079 | 1 | BRACKET MUFFLER ACCESS |
| 16 | 0C7038A | 1 | BRACKET, ENGINE MOUNTING | 52 | 0F9273 | 1 | SOLENOID, 6 VOLTS DC (10KW) |
|  | 0F4179 | 1 | PLATE, MOUNTING ENGINE 530HSB | 53 | 0E9592 | 2 | SCREW PPHM $4-40 X 3/8 SEMS (10KW) |

ITEM PART NO. QTY. DESCRIPTION

* * *

7 & 10kW, GN-410/GT-530 Regulator – Drawing No. 0F9425 Air-cooled Generators Section 9 — Exploded Views and Parts Lists

7 & 10kW, GN-410/GT-530 Regulator – Drawing No. 0F9425 Air-cooled Generators

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | 0D5694 | 1 | CASTING, TWIN REGULATOR HOUSING (7KW) |
| 0F9285 | 1 | CASTING, TWIN REGULATOR HOUSING |  |
| 2 | 0F5022 | 1 | SOLENOID COIL, 12VDC |
| 3 | 0C4647 | 1 | GASKET , SOLENOID |
| 4 | 0DA4166 | 1 | PLUNGER, LP REGULATOR ASSEMBLY |
| 5 | 0F8822 | 1 | REGULATOR BRACKET |
| 6 | 022145 | 2 | WASHER FLAT 5/16-M8 |
| 7 | 022129 | 2 | WASHER LOCK 5/16-M8 |
| 8 | 0F4795 | 4 | SCREW PPHM SEMS M4-0.7 X 10 |
| 9 | 0C5760P | 1 | FUEL JET GASEOUS REGULATOR (7KW) |
| 10 | 0C6606 | 1 | BARBED STRAIGHT ½ NPT x ½ (7KW) |
| 0C6606 | 2 | BARBED STRAIGHT ½ NPT x ½ |  |
| 11 | 097934 | 1 | O-RING (7KW) |
| 12 | 0C4645 | 1 | ADJUSTER SCREW, TWIN REGULATOR (7KW) |
| 13 | 0C5761 | 2 | LEVER, REGULATOR |
| 14 | 0C5968 | 2 | SUPPORT, INLET SEAL |
| 15 | 0C6066 | 2 | SEAL, INLET |
| 16 | 0C5759 | 2 | PIN, PINOT ARM |
| 17 | 0C5764A | 2 | SPRING, REGULATOR (7KW) |
| 0C5764 | 2 | SPRING, REGULATOR |  |
| 18 | 070728 | 4 | SCREW, PFHMS M3-0.5 x 5 |
| 19 | 0C6069 | 2 | GASKET, DIAPHRAGM |
| 20 | 0C5762 | 2 | COVER, TWIN REGULATOR (7KW) |
| 0F9189 | 2 | COVER, TWIN REGULATOR |  |
| 21 | 045764 | 16 | SCREW, TAPTITE M4X8 BP |
| 22 | 0C6731 | 2 | RIVET, POP .118 X.125 |
| 23 | 0C6067 | 2 | SUPPORT, DIAPHRAGM |
| 24 | 0C4706 | 2 | DIAPHRAGM, TWIN REGULATOR |
| 25 | 0C6068 | 2 | CAP, DIAPHRAGM SUPPORT |
| 26 | 0C4643A | 2 | INLET, TWIN REGULATOR 11.11 DIA. |
| 27 | 072683A | 2 | PLUG STD PIPE 1/8 SOCKET HEAD (7KW) |
| 072683A | 1 | PLUG STD PIPE 1/8 SOCKET HEAD |  |
| 28 | 0A4032 | 1 | PIN, LIMITED ADJUSTMENT (7KW) |
| 29 | 0D3308 | 4 | WASHER, FLAT M3 X 10mm O.D. |
| 30 | 024310 | 1 | PLUG, STANDARD PIPE 1/2" STEEL SQUARE HEAD (7KW) |
| 31 | 0D3973 | 1 | PLUG, EXPansion 16mm (7KW) |
| 32 | 042907 | 2 | SCREW HHC M8-1.25 X 16 |
| 33 | 028414A | 1 | BARBED STRAIGHT 1/8"NPT X ¼"(10KW) |
| 34 | 035578A | 1 | NIPPLE CLOSE 1/8NPT (10KW) |
| 35 | 0G0247 | 1 | SOLENOID, LP/NG DC12V (10KW) |
| 36 | 0F9773B | 1 | SOLENOID WIRE, #0 (10KW) |
| 37 | 0F9773A | 1 | SOLENOID WIRE, #14 (10KW) |

QTY.
1
1
1
1
1
1
2
2
4
1
1
2
1
1
2
2
2
2
2
2
4
2
2
2
16
2
2
2
2
2
2
1
1
4
1
1
2
1
1
1
1
1

* * *

13 & 16kW, GT-990 Regulator – Drawing No. 0F9426 Air-cooled Generators

* * *

| ITEM | PART NO. | QTY. | DESCRIPTION |
| --- | --- | --- | --- |
| 1 | 0F9285 | 1 | CASTING,TWIN REGULATOR HOUSING |
| 2 | 0F5022 | 1 | SOLENOID COIL,12VDC |
| 3 | 0C4647 | 2 | GASKET,SOLENOID |
| 4 | 0D4166 | 1 | PLUNGER,LP REGULATOR ASSEMBLY |
| 5 | 0F8096 | 1 | BRKT REGULATOR MOUNTING 990 |
| 6 | 022145 | 4 | WASHER FLAT 5/16-M8 |
| 7 | 022129 | 4 | WASHER LOCK 5/16-M8 |
| 8 | 0F4795 | 8 | SCREW PPHM SEMS M4-0.7X10 |
| 9 | 045771 | 2 | NUT HEX M8-1.25 |
| 10 | 0C6606 | 2 | BARBED STRAIGHT1/2NPTx1/2 |
| 11 | 042907 | 2 | SCREW HHC M8-1.25X16 |
| 12 | 026915A | 1 | NIPPLE CLOSE %X1.375 WITH VIBRA SEAL |
| 13 | 0C5761 | 2 | LEVER,REGULATOR |
| 14 | 0C5968 | 2 | SUPPORT,INLET SEAL |
| 15 | 0C6066 | 2 | SEAL,INLET |
| 16 | 0C5759 | 2 | PIN,PIVOT ARM |
| 17 | 0C5764 | 2 | SPRING,REGULATOR |
| 18 | 070728 | 4 | SCREW,PFHMSM3-0.5x5 |
| 19 | 0C6069 | 2 | GASKET,DIAPHRAGM |
| 20 | 0F9189 | 2 | COVER,TWIN REGULATOR |
| 21 | 045764 | 16 | SCREW,TAPTITEM4X8BP |
| 22 | 0C6731 | 2 | RIVET,POP.118X.125 |
| 23 | 0C6067 | 2 | SUPPORT,DIAPHRAGM |
| 24 | 0C4706 | 2 | DIAPHRAGM,TWIN REGULATOR |
| 25 | 0C6068 | 2 | CAP,DIAPHRAGM SUPPORT |
| 26 | 0C4643A | 2 | INLET,TWIN REGULATOR11.11DIA. |
| 27 | 072683A | 3 | PLUG STD PIPE1/8SOCKET HEAD |
| 28 | 049226 | 4 | WASHER,LOCK,M5 |
| 29 | 0D3308 | 4 | WASHER,FLATM3X10mmO.D. |
| 30 | 051713 | 4 | WASHER,FLAT,M5 |
| 31 | 0F8979 | 1 | SOLENOID COVER PLATE |
| 32 | 051716 | 4 | NUTHEXM5-0.8 |
| 33 | 0E9533 | 1 | SOLENOID ADAPTER |
| 34 | 0E9534 | 1 | ASSY,FUELSYSTEMPLENUM |
| 35 | 0E9535 | 1 | PLENUMGASKET |

* * *

NOTE: This Emission Control Warranty Statement pertains to this product only IF the generator size is 15 kW or below.

CALIFORNIA EMISSION CONTROL WARRANTY STATEMENT
YOUR WARRANTY RIGHTS AND OBLIGATIONS

The California Air Resources Board (CARB) and Generac Power Systems, Inc. (Generac) are pleased to explain the Emission
Control System Warranty on your new engine.\* In California, new utility, and lawn and garden equipment engines must be
designed, built and equipped to meet the state’s stringent anti-smog standards. Generac will warrant the emission control
system on your engine for the periods of time listed below provided there has been no abuse, neglect, unapproved modification or improper maintenance of your engine.

Your emission control system may include parts such as the carburetor, ignition system and exhaust system. Generac will
repair your engine at no cost to you for diagnosis, replacement parts and labor, should a warrantable condition occur.

MANUFACTURER’S EMISSION CONTROL SYSTEM WARRANTY COVERAGE:

Emissions control systems on 1995 and later model year engines are warranted for two years as hereinafter noted. If, during such warranty period, any emission-related component or system on your engine is found to be defective in materials or
workmanship, repairs or replacement will be performed by a Generac Authorized Warranty Service Facility.

PURCHASER’S/OWNER’S WARRANTY RESPONSIBILITIES:

As the engine purchaser/owner, you are responsible for the completion of all required maintenance as listed in your factory
supplied Owner’s Manual. For warranty purposes, Generac recommends that you retain all receipts covering maintenance
on your engine. However, Generac cannot deny warranty solely due to the lack of receipts or for your failure to ensure the
completion of all scheduled maintenance.

As the engine purchaser/owner, you should, however, be aware that Generac may deny any and/or all warranty coverage or
responsibility if your engine, or a part/component thereof, has failed due to abuse, neglect , improper maintenance or unapproved modifications, or the use of counterfeit and/or “grey market” parts not made, supplied or approved by Generac.

You are responsible for contacting a Generac Authorized Warranty Service Facility as soon as a problem occurs. The
warranty repairs should be completed in a reasonable amount of time, not to exceed 30 days.

Warranty service can be arranged by contacting either your selling dealer or a Generac Authorized Warranty Service Facility.
To locate the Generac Authorized Warranty Service Facility nearest you, call our toll-free number:

Warranty service can be performed only by a Generac Authorized Warranty Service Facility. When requesting warranty service, evidence must be presented showing the date of the sale to the original purchaser/owner.

For Air-cooled Product ...

If you have any questions regarding your warranty rights and responsibilities, you should contact Generac at one of
the following addresses:

ATTENTION WARRANTY DEPARTMENT
GENERAC POWER SYSTEMS, INC.
P.O. BOX 297

IMPORTANT NOTE: This warranty statement explains your rights and obligations under the Emission Control System
Warranty (ECS Warranty), which is provided to you by Generac pursuant to California law. See also the “Generac Limited
Warranties for Generac Power Systems, Inc.,” which is enclosed herewith on a separate sheet, also provided to you by
Generac. The ECS Warranty applies only to the emission control system of your new engine. If there is any conflict in
terms between the ECS Warranty and the Generac Warranty, the ECS Warranty shall apply except in circumstances where
the Generac Warranty may provide a longer warranty period. Both the ECS Warranty and the Generac Warranty describe
important rights and obligations with respect to your new engine.

P.O. BOX 297
WHITEWATER, WI 53190

WHITEWATER, WI 53190

Part 1

For Liquid-cooled Product ...

* * *

EMISSION CONTROL SYSTEM WARRANTY

Emission Control System Warranty (ECS Warranty) for 1995 and later model year engines:

(a) Applicability: This warranty shall apply to 1995 and later model year engines. The ECS Warranty Period shall begin on the
date the new engine or equipment is purchased by/delivered to its original, end-use purchaser/owner and shall continue
for 24 consecutive months thereafter.

(b) General Emissions Warranty Coverage: Generac warrants to the original, end-use purchaser/owner of the new engine or
equipment and to each subsequent purchaser/owner that each of its engines is ...
(1) Designed, built and equipped so as to conform with all applicable regulations adopted by the CARB pursuant to its

(1) Designed, built and equipped so as to conform with all applicable regulations adopted by the CARB pursuant to its
authority, and
(2) Free from defects in materials and workmanship which, at any time during the ECS Warranty Period, may cause a

(2) Free from defects in materials and workmanship which, at any time during the ECS Warranty Period, may cause a
warranted emissions-related part to fail to be identical in all material respects to the part as described in the engine
manufacturer’s application for certification.
(c) The ECS Warranty only pertains to emissions-related parts on your engine, as follows:

(c) The ECS Warranty only pertains to emissions-related parts on your engine, as follows:
(1) Any warranted, emissions-related parts that are not scheduled for replacement as required maintenance in the Owner’s

(c) The ECS Warranty only pertains to emissions-related parts on your engine, as follows:
(1) Any warranted, emissions-related parts that are not scheduled for replacement as required maintenance in the Owner’s
Manual shall be warranted for the ECS Warranty Period. If any such part fails during the ECS Warranty Period, it shall
be repaired or replaced by Generac according to Subsection (4) below. Any such part repaired or replaced under the
ECS Warranty shall be warranted for the remainder of the ECS Warranty Period.
(2) Any warranted, emissions-related part that is scheduled only for regular inspection as specified in the Owner’s Manual

ECS Warranty shall be warranted for the remainder of the ECS Warranty Period.
(2) Any warranted, emissions-related part that is scheduled only for regular inspection as specified in the Owner’s Manual
shall be warranted for the ECS Warranty Period. A statement in such written instructions to the effect of “repair or
replace as necessary” shall not reduce the ECS Warranty Period. Any such part repaired or replaced under the ECS
Warranty shall be warranted for the remainder of the ECS Warranty Period.
(3) Any warranted, emissions-related part that is scheduled for replacement as required maintenance in the Owner’s

(3) Any warranted, emissions-related part that is scheduled for replacement as required maintenance in the Owner’s
Manual shall be warranted for the period of time prior to the first scheduled replacement point for that part. If the part
fails prior to the first scheduled replacement, the part shall be repaired or replaced by Generac according to Subsection
(4) below. Any such emissions-related part repaired or replaced under the ECS Warranty shall be warranted for the
remainder of the ECS Warranty Period prior to the first scheduled replacement point for such emissions-related part.
(4) Repair or replacement of any warranted, emissions-related part under this ECS Warranty shall be performed at no

(4) Repair or replacement of any warranted, emissions-related part under this ECS Warranty shall be performed at no
charge to the owner at a Generac Authorized Warranty Service Facility.
(5) When the engine is inspected by a Generac Authorized Warranty Service Facility, the owner shall not be held responsible

(5) When the engine is inspected by a Generac Authorized Warranty Service Facility, the owner shall not be held responsible
for diagnostic costs if the repair is deemed warrantable.
(6) Generac shall be liable for damages to other original engine components or approved modifications proximately caused

(6) Generac shall be liable for damages to other original engine components or approved modifications proximately caused
by a failure under warranty of any emission-related part covered by the ECS Warranty.
(7) Throughout the ECS Warranty Period, Generac shall maintain a supply of warranted emission-related parts sufficient

(8) Any Generac authorized and approved emission-related replacement part may be used in the performance of any ECS
Warranty maintenance or repairs and will be provided without charge to the owner. Such use shall not reduce Generac
ECS Warranty obligations.
(9) Unapproved, add-on, modified, counterfeit and/or “grey market” parts may not be used to modify or repair a Generac

b) Mixer and its gaskets (if so equipped)
c) Carburetor and its gaskets (if so equipped)

1. Fuel Metering System:

(9) Unapproved, add-on, modified, counterfeit and/or “grey market” parts may not be used to modify or repair a Generac
engine. Such use voids this ECS Warranty and shall be sufficient grounds for disallowing an ECS Warranty claim.
Generac shall not be held liable hereunder for failures of any warranted parts of a Generac engine caused by the use of
such an unapproved, add-on, modified, counterfeit and/or “grey market” part.

2. Air Induction System including:
   a) Intake pipe/manifold
   b) Air cleaner

EMISSION RELATED PARTS INCLUDE THE FOLLOWING:

5. Crankcase Breather Assembly including:
   a) Breather connection tube

6. Catalytic Muffler Assembly (if so equipped) including:
   a) Muffler gasket
   b) Exhaust manifold

7. Crankcase Breather Assembly including:


Part 2

* * *

GENERAC POWER SYSTEMS "TWO YEAR" LIMITED WARRANTY FOR GUARDIAN®
"PREPACKAGED EMERGENCY AUTOMATIC STANDBY GENERATORS"
For a period of two years from the date of original sale, Generac Power Systems, Inc. (Generac) warrants that its Guardian generator will

For a period of two years from the date of original sale, Generac Power Systems, Inc. (Generac) warrants that its Guardian generator will
be free from defects in material and workmanship for the items and period set forth below. Generac will, at its option, repair or replace
any part which, upon examination, inspection and testing by Generac or a Guardian Authorized Warranty Service Dealer, is found to
be defective. Any equipment that the purchaser/owner claims to be defective must be examined by the nearest Guardian Authorized
Warranty Service Dealer. All transportation costs under the warranty, including return to the factory, are to be borne and prepaid by
the purchaser/owner. This warranty applies only to Generac Guardian prepackaged emergency automatic standby generators sold and
rated for use in "Standby" applications.
WARRANTY SCHEDULE

WARRANTY SCHEDULE
YEARS ONE and TWO - 100% (one hundred percent) transferable coverage on Labor and Part(s) listed (proof of purchase and main-

| WARRANTY SCHEDULE |
| --- |
| YEARS ONE and TWO - 100% (one hundred percent) transferable coverage on Labor and Part(s) listed (proof of purchase and maintenance is required):Engine - All ComponentsAlternator - All ComponentsTransfer System - All ComponentsSteel enclosures are warranted against rusting for the first year of ownership only. Damage caused after receipt of generator is the responsibility of the owner and is not covered by this warranty. Nicks, scrapes, dents or scratches to the painted enclosure should be repaired promptly by the owner.All warranty expense allowances are subject to the conditions defined in Guardian's Warranty Policies, Procedures and Flat Rate Manual. |
| THIS WARRANTY SHALL NOT APPLY TO THE FOLLOWING: |
| Guardian generators that utilize non-Guardian/Generac replacement parts. |
| Guardian generators utilizing non-Guardian/Generac automatic transfer switches. |
| Repairs or diagnostics performed by individuals other than Guardian/Generac authorized dealers not authorized in writing by Generac Power Systems. |
| Any Guardian generators used as rental or trailer mounted applications. |
| Damage to generator system (including transfer switch) caused by improper installation or costs necessary to correct installation. |
| Units used for prime power in place of existing utility power where utility power is present or in place of utility power where utility power service does not normally exist. |
| Costs of normal maintenance, adjustments, installation and start-up. |
| Enclosures that are rusting due to the improper installation, location in a harsh or saltwater environment or scratched where integrity of paint applied is compromised. |
| Failures caused by any contaminated fuels, oils, coolants or lack of proper fluid amounts. |
| Failures due, but not limited, to normal wear and tear, accident, misuse, abuse, negligence or improper installation. As with all mechanical devices, the Generac engines need periodic part(s) service and replacement to perform well. This warranty will not cover repair when normal use has exhausted the life of a part(s) or engine. |
| Failures caused by any material cause or act of God, such as collision, theft, vandalism, riot or wars, nuclear holocaust, fire, freezing, lightning, earthquake, windstorm, hail, volcanic eruption, water or flood, tornado or hurricane. |
| Damage related to rodent and/or insect infestation. |
| Products that are modified or altered in a manner not authorized by Generac in writing. |
| Any incidental, consequential or indirect damages caused by defects in materials or workmanship, or any delay in repair or replacement of the defective part(s). |
| Failure due to misapplication. |
| Telephone, cellular phone, facsimile, internet access or other communication expenses. |
| Living or travel expenses of person(s) performing service, except as specifically included within the terms of a specific unit warranty period. |
| Expenses related to "customer instruction" or troubleshooting where no manufacturing defect is found. |
| Rental equipment used while warranty repairs are being performed. |
| Costs incurred for equipment used for removal and/or reinstallation of generator, i.e.: cranes, hoists, lifts, etc.) |
| Overnight freight costs for replacement part(s). |
| Overtime labor. |
| Starting batteries, fuses, light bulbs and engine fluids. |
| THIS WARRANTY IS IN PLACE OF ALL OTHER WARRANTIES, EXPRESSED OR IMPLIED, SPECIFICALLY, GENERAC MAKES NO OTHER WARRANTIES AS TO THE MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Some states do not allow limitations on how long an implied warranty lasts, so the above limitation may not apply to you.GENERAC's ONLY LIABILITY SHALL BE THE REPAIR OR REPLACEMENT OF PART(S) AS STATED ABOVE. IN NO EVENT SHALL GENERAC BE LIABLE FOR ANY INCIDENTAL OR CONSEQUENTIAL DAMAGES, EVEN IF SUCH DAMAGES ARE A DIRECT RESULT OF GENERAC's NEGLIGENCE. Some states do not allow the exclusion or limitation of incidental or consequential damages, so the above limitation may not apply to youThis warranty gives you specific legal rights. You also have other rights from state to state. |
| GENERAC® POWER SYSTEMS, INC.P.O. BOX 297 • WHITEWATER, WI 53190Revision (09/01/06) |

YEARS ONE and TWO - 100% (one hundred percent) transferable coverage on Labor and Part(s) listed (proof of purchase and maintenance is required):
Engine - All Components

Engine - All Components
Alternator - All Components

Steel enclosures are warranted against rusting for the first year of ownership only. Damage caused after receipt of generator is the
responsibility of the owner and is not covered by this warranty. Nicks, scrapes, dents or scratches to the painted enclosure should be
repaired promptly by the owner.
All warranty expense allowances are subject to the conditions defined in Guardian's Warranty Policies, Procedures and Flat Rate

repaired promptly by the owner.
All warranty expense allowances are subject to the conditions defined in Guardian's Warranty Policies, Procedures and Flat Rate
Manual.
THIS WARRANTY SHALL NOT APPLY TO THE FOLLOWING:

THIS WARRANTY SHALL NOT APPLY TO THE FOLLOWING:
Guardian generators that utilize non-Guardian/Generac replacement parts.

• Guardian generators that utilize non-Guardian/Generac replacement parts.
• Guardian generators utilizing non-Guardian/Generac automatic transfer switches.

• Guardian generators utilizing non-Guardian/Generac automatic transfer switches.
• Repairs or diagnostics performed by individuals other than Guardian/Generac authorized dealers not authorized in writing by Generac Power

• Repairs or diagnostics performed by individuals other than Guardian/Generac authorized dealers not authorized in writing by Generac Power
Systems.
• Any Guardian generators used as rental or trailer mounted applications.

• Units used for prime power in place of existing utility power where utility power is present or in place of utility power where utility power service does
not normally exist.
• Costs of normal maintenance, adjustments, installation and start-up.

• Steel enclosures that are rusting due to the improper installation, location in a harsh or saltwater environment or scratched where integrity of paint
applied is compromised.
• Failures caused by any contaminated fuels, oils, coolants or lack of proper fluid amounts.

• Failures caused by any contaminated fuels, oils, coolants or lack of proper fluid amounts.
• Failures due, but not limited, to normal wear and tear, accident, misuse, abuse, negligence or improper installation. As with all mechanical devices, the

• Failures due, but not limited, to normal wear and tear, accident, misuse, abuse, negligence or improper installation. As with all mechanical devices, the
Generac engines need periodic part(s) service and replacement to perform well. This warranty will not cover repair when normal use has exhausted
the life of a part(s) or engine.
• Failures caused by any external cause or act of God, such as collision, theft, vandalism, riot or wars, nuclear holocaust, fire, freezing, lightning, earth-

• Products that are modified or altered in a manner not authorized by Generac in writing.
• Any incidental, consequential or indirect damages caused by defects in materials or workmanship, or any delay in repair or replacement of the defec-

• Telephone, cellular phone, facsimile, internet access or other communication expenses.
• Living or travel expenses of person(s) performing service, except as specifically included within the terms of a specific unit warranty period.

This warranty gives you specific legal rights. You also have other rights from state to state.

• Starting batteries, fuses, light bulbs and engine fluids.

®
GENERAC POWER SYSTEMS, INC.
P.O. BOX 297 • WHITEWATER, WI 53190

Revision (09/01/06)

---

## Wiring diagram help, older generac standby generator

**Source:** https://gentekpower.com/forums/viewtopic.php?t=1181

![](https://gentekpower.com/forums/ext/planetstyles/flightdeck/store/Storm-Header-50.jpg)

[![](https://gentekpower.com/forums/ext/planetstyles/flightdeck/store/Logo-White.png)](https://gentekpower.com/forums/index.php?sid=8305c867f33b0267e42a88ad0bc1065f "Board index")

### Generac Generator Troubleshooting, Help, and Repair Forum \| Gentek Power

Find error code help, owner's manuals, troubleshooting guides & help videos for Generac, Honeywell, Carrier and more.

[![Generac Generator Troubleshooting](https://gentekpower.com/forums/images/phpbb_ads/9ac3cc747eeae4efb1131225c318e751.gif)](https://shop.gentekpower.com/)

- [Search](https://gentekpower.com/forums/search.php?sid=8305c867f33b0267e42a88ad0bc1065f "View the advanced search options")

#### [Wiring diagram help, older generac standby generator](https://gentekpower.com/forums/viewtopic.php?f=6&t=1181&sid=8305c867f33b0267e42a88ad0bc1065f)

Generac, Guardian, Honeywell, Siemens, Centurion, Watchdog, Bryant, & Carrier Air Cooled Home Standby generator troubleshooting and repair questions

[Post Reply](https://gentekpower.com/forums/posting.php?mode=reply&f=6&t=1181&sid=8305c867f33b0267e42a88ad0bc1065f "Post a reply")

- [Print view](https://gentekpower.com/forums/viewtopic.php?f=6&t=1181&sid=8305c867f33b0267e42a88ad0bc1065f&view=print "Print view")

Search[Advanced search](https://gentekpower.com/forums/search.php?sid=8305c867f33b0267e42a88ad0bc1065f "Advanced search")

2 posts
• Page **1** of **1**

[bsavulis](https://gentekpower.com/forums/memberlist.php?mode=viewprofile&u=1911&sid=8305c867f33b0267e42a88ad0bc1065f)New Member

![New Member](https://gentekpower.com/forums/images/ranks/1-star.png)**Posts:** [1](https://gentekpower.com/forums/search.php?author_id=1911&sr=posts&sid=8305c867f33b0267e42a88ad0bc1065f)**Joined:** Mon Sep 07, 2020 1:53 pm

- [Quote](https://gentekpower.com/forums/posting.php?mode=quote&f=6&p=6768&sid=8305c867f33b0267e42a88ad0bc1065f "Reply with quote")
- - [Quote](https://gentekpower.com/forums/posting.php?mode=quote&f=6&p=6768&sid=8305c867f33b0267e42a88ad0bc1065f "Reply with quote")


[Mon Sep 07, 2020 2:02 pm](https://gentekpower.com/forums/viewtopic.php?p=6768&sid=8305c867f33b0267e42a88ad0bc1065f#p6768 "Post")

I have replaced the control board on my Generac 04109-0 LP generator with an aftermarket controller. I do have it operational. The only connection I have doubts about is the #66 wire. It comes from the generator windings to the voltage regulator, and then branched to the control board. Can anone tell me the purpose of the connection? And how the control board used it?

Thanks

Brian

[Chris](https://gentekpower.com/forums/memberlist.php?mode=viewprofile&u=2&sid=8305c867f33b0267e42a88ad0bc1065f)Site Admin

![Site Admin](https://gentekpower.com/forums/images/ranks/Verified-Dealer-Admin.png)**Posts:** [9208](https://gentekpower.com/forums/search.php?author_id=2&sr=posts&sid=8305c867f33b0267e42a88ad0bc1065f)**Joined:** Sat Aug 04, 2018 8:46 pm**Location:** Clawson, MI**Contact:**

[Contact Chris](https://gentekpower.com/forums/viewtopic.php?t=1181# "Contact Chris")

[Website](https://gentekpower.com/ "Website") [Facebook](http://facebook.com/GentekPower/ "Facebook") [Twitter](http://twitter.com/GentekPower "Twitter")

- [Quote](https://gentekpower.com/forums/posting.php?mode=quote&f=6&p=6876&sid=8305c867f33b0267e42a88ad0bc1065f "Reply with quote")
- - [Quote](https://gentekpower.com/forums/posting.php?mode=quote&f=6&p=6876&sid=8305c867f33b0267e42a88ad0bc1065f "Reply with quote")


[Sun Sep 13, 2020 11:34 am](https://gentekpower.com/forums/viewtopic.php?p=6876&sid=8305c867f33b0267e42a88ad0bc1065f#p6876 "Post")

66 is usually a battery charge winding which would power the charger when the unit is running. 66A would be the run winding which tells the controller that the unit is actually running.

Generac tech for over 12 years. I'm here to help!

"The _only_ source of knowledge is experience" -Albert Einstein

**Looking for Generac parts? Gentek Power offers the full line of Generac replacement parts!** [Shop Gentek Power Generac Parts](https://shop.gentekpower.com/)

A list of my favorite Generator & Electrical Tools! [https://www.amazon.com/shop/gentek\_power](https://www.amazon.com/shop/gentek_power)

[Post Reply](https://gentekpower.com/forums/posting.php?mode=reply&f=6&t=1181&sid=8305c867f33b0267e42a88ad0bc1065f "Post a reply")

- [Print view](https://gentekpower.com/forums/viewtopic.php?f=6&t=1181&sid=8305c867f33b0267e42a88ad0bc1065f&view=print "Print view")

Display: All posts1 day7 days2 weeks1 month3 months6 months1 yearSort by: AuthorPost timeSubjectDirection: AscendingDescending

* * *

2 posts
• Page **1** of **1**

[Return to “Generac Air Cooled”](https://gentekpower.com/forums/viewforum.php?f=6&sid=8305c867f33b0267e42a88ad0bc1065f)

Jump to

- [About Gentek Power](https://gentekpower.com/forums/viewforum.php?f=1&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Looking For Replacement Generac Parts?](https://gentekpower.com/forums/viewforum.php?f=26&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Who is Gentek Power?](https://gentekpower.com/forums/viewforum.php?f=3&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Common Generator Terms, Abbreviations & General Info](https://gentekpower.com/forums/viewforum.php?f=21&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Website Issues/Concerns](https://gentekpower.com/forums/viewforum.php?f=4&sid=8305c867f33b0267e42a88ad0bc1065f)
- [Generator Help - Troubleshooting/Repair/Installation](https://gentekpower.com/forums/viewforum.php?f=5&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Generac Air Cooled](https://gentekpower.com/forums/viewforum.php?f=6&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Generac Liquid Cooled](https://gentekpower.com/forums/viewforum.php?f=7&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Kohler Air Cooled/Liquid Cooled](https://gentekpower.com/forums/viewforum.php?f=9&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Briggs & Stratton, GE, Fortress](https://gentekpower.com/forums/viewforum.php?f=24&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Cummins/Onan](https://gentekpower.com/forums/viewforum.php?f=10&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Other Brands](https://gentekpower.com/forums/viewforum.php?f=22&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Portable Generators](https://gentekpower.com/forums/viewforum.php?f=13&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Transfer Switches](https://gentekpower.com/forums/viewforum.php?f=11&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Installation Questions](https://gentekpower.com/forums/viewforum.php?f=12&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Part Number Help](https://gentekpower.com/forums/viewforum.php?f=20&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Vintage Generators](https://gentekpower.com/forums/viewforum.php?f=23&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Sure Start AC Soft Starters](https://gentekpower.com/forums/viewforum.php?f=25&sid=8305c867f33b0267e42a88ad0bc1065f)
- [Off Topic](https://gentekpower.com/forums/viewforum.php?f=14&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Introduction](https://gentekpower.com/forums/viewforum.php?f=15&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   General Discussion](https://gentekpower.com/forums/viewforum.php?f=16&sid=8305c867f33b0267e42a88ad0bc1065f)
- [Generator & Parts Garage Sale](https://gentekpower.com/forums/viewforum.php?f=17&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Items For Sale](https://gentekpower.com/forums/viewforum.php?f=18&sid=8305c867f33b0267e42a88ad0bc1065f)
- [↳   Wanted](https://gentekpower.com/forums/viewforum.php?f=19&sid=8305c867f33b0267e42a88ad0bc1065f)

- - [Contact us](https://gentekpower.com/forums/memberlist.php?mode=contactadmin&sid=8305c867f33b0267e42a88ad0bc1065f)
  - All times are UTC-04:00
  - [Delete cookies](https://gentekpower.com/forums/ucp.php?mode=delete_cookies&sid=8305c867f33b0267e42a88ad0bc1065f)
  - [Privacy](https://gentekpower.com/forums/ucp.php?mode=privacy&sid=8305c867f33b0267e42a88ad0bc1065f "Privacy")
  - [Terms](https://gentekpower.com/forums/ucp.php?mode=terms&sid=8305c867f33b0267e42a88ad0bc1065f "Terms")

- All times are UTC-04:00
- [Delete cookies](https://gentekpower.com/forums/ucp.php?mode=delete_cookies&sid=8305c867f33b0267e42a88ad0bc1065f)
- [Privacy](https://gentekpower.com/forums/ucp.php?mode=privacy&sid=8305c867f33b0267e42a88ad0bc1065f "Privacy")
- [Terms](https://gentekpower.com/forums/ucp.php?mode=terms&sid=8305c867f33b0267e42a88ad0bc1065f "Terms")
- [Contact us](https://gentekpower.com/forums/memberlist.php?mode=contactadmin&sid=8305c867f33b0267e42a88ad0bc1065f)

Powered by [phpBB](http://www.phpbb.com/) ™ • Design by [PlanetStyles](http://www.planetstyles.net/)

![cron](https://gentekpower.com/forums/app.php/cron/cron.task.text_reparser.phpbb_pages?sid=8305c867f33b0267e42a88ad0bc1065f)

---
