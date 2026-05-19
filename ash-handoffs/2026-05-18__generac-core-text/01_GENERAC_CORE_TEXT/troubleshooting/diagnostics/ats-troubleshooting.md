Loading

[×](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch# "Cancel and close") Sorry to interrupt

CSS Error

[Refresh](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch?nocache=https%3A%2F%2Fsupport.generac.com%2Fs%2Farticle%2FHome-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch)

Skip to Main Content

Generac Help Center

- [Home](https://support.generac.com/s/)
- Topics

- More


Expand search

Search

- Search

""



Close search

## Troubleshooting Automatic transfer switch issues

## This article addresses common scenarios in which operational issues occur when power is transferred to or from a utility during an outage or when utility power is present. Scenarios are presented with troubleshooting overviews and resources to address each scenario.      - Dec 11, 2025 - Knowledge

### Fields

Title

Troubleshooting Automatic transfer switch issues

URL Name

Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch

### Content

Public Content

**Read the manual thoroughly and understand all of the instructions, cautions, and warnings before using this equipment. If any section of the manual is not understood, contact your nearest authorized dealer, or contact Generac Customer Service at 1-888-436-3722 (1-888-GENERAC), or [www.generac.com](https://www.generac.com/) with any questions or concerns.**

# Home standby generator power transfer issues: Troubleshooting the automatic transfer switch

This article addresses common scenarios in which operational issues occur when power is transferred to or from a utility during an outage or when utility power is present. Scenarios are presented with troubleshooting overviews and resources to address each scenario.

## Environment

This article applies to home standby generators with 100 amp, 150 amp, and 200 Amp single-phase automatic transfer switches.

## Identification

Automatic transfer switches are **ONLY** used with home standby generators.

![Transfer switch example](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000CwZh&feoid=00N5f00000hVqcE&refid=0EMU1000008UsZR)

> **Note**: The example is for identification purposes only. Automatic transfer switches may vary in appearance or configuration.

## Troubleshooting scenarios

To jump to a relevant section, click the below link that best describes your scenario:

- [Transfer to generator power does not occur during an outage](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch#t2g)
- [Power does not transfer back to utility when utility power returns](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch#pt2u)
- [The generator starts, and a power transfer to the generator occurs with utility power present](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch#ptwup)
- [Blown fuses and wiring issues](https://support.generac.com/s/article/Home-standby-generator-power-transfer-issues-Troubleshooting-the-Automatic-Transfer-Switch#bf)

## Automatic transfer switch operation - how does it work?

#### Home standby systems with an automatic transfer switch (ATS) should automatically transfer power to the generator when an outage is detected. The ATS requires two things to transfer power automatically:

- Voltage available from the generator, and
- Voltage on the transfer circuit (194/23 wires)

> **Note**: Generac does NOT recommend untrained end users attempt to modify or service internal generator wiring. [Generac independent authorized service dealers](https://www.generac.com/home-standby-generators/home-dealer-locator/) are trained to service Generac generators and can be contacted using the dealer lookup tool on [Generac.com](http://generac.com/): [How Can I Find a Generac Service Dealer in My Area?](https://support.generac.com/s/article/How-Can-I-Find-a-Generac-Service-Dealer-in-My-Area)

### Utility Failure - automatic sequence of operation

> **Note**: Percentages and delay times listed below are factory default values. These can be adjusted by an [IASD](https://support.generac.com/s/article/What-Is-a-Generac-Independent-Authorized-Service-Dealer-IASD) and may not reflect configuration of your system.

1\. If the generator is set to AUTO when utility power fails (below 65% of nominal), a five-second line interrupt delay time is started.

2\. The engine will crank and start (if utility power is unavailable when the timer expires).

3\. Once the engine is started, an engine warm-up timer will be initiated. The timer duration will depend on whether [Cold Smart Start](https://support.generac.com/s/article/What-is-Cold-Smart-Start) has been enabled.

4\. The controller will transfer the load to the generator when the warm-up time expires.

5\. If utility power is restored (above 80% nominal) at any time from the initiation of engine start until the generator is ready to accept load (warm-up time has not elapsed), the controller completes the start cycle and runs the generator through its normal cool-down cycle.

6\. During this cool-down, the load will remain on the utility source.

### Can the start-up delay time be adjusted?

Start-up delay is not configured at the transfer switch, it is configured on the generator's control panel. A Generac independent authorized service dealer (IASD) can adjust the start-up delay time. This may be done for various reasons, but it is most common in areas with frequent brownouts: [Can the Startup Delay Time for a Home Standby Generator Be Adjusted?](https://support.generac.com/s/article/Can-the-Startup-Delay-Time-for-a-Home-Standby-Generator-Be-Adjusted)

## Transfer handle position

### **Single Phase Automatic Transfer Switches**

> **Note**: The example is only for identification purposes; actual items may vary in appearance or configuration.

![Transfer handle example](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000CwZh&feoid=00N5f00000hVqcE&refid=0EMU1000009Rxy6)

## Manual transfer operation

A manual transfer of an automatic transfer switch can be performed in urgent outage scenarios, or to test the equipment. For more information, see the following article: [How do I manually operate an automatic transfer switch?](https://support.generac.com/s/article/How-do-I-manually-operate-an-automatic-transfer-switch)

## Scenarios

## Transfer to generator power does not occur during an outage

#### In this scenario, utility power is out, the generator is running, but the transfer switch does not move to standby generator power.

**If power transfer to the generator does not occur, check the following:**

1\. Confirm that the generator's Main Line Circuit Breaker (MLCB) is in the **ON** position. If it is in the OFF position when the generator is in AUTO mode, the generator will start, but the ATS will not transfer power **because it needs generator power to move to the standby position.**

![guardian series MLCB.png](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000CwZh&feoid=00N5f00000hVqcE&refid=0EMU100000CkTJR)

![pre2016_real.png](https://support.generac.com/servlet/rtaImage?eid=ka0U1000000CwZh&feoid=00N5f00000hVqcE&refid=0EMU100000CkTT7)

2\. In some scenarios, manually operating the transfer switch can provide power the home, although it does not resolve the underlying issue, and should only be performed after consulting with and understanding the generator's user manual: [How do I manually operate an automatic transfer switch?](https://support.generac.com/s/article/How-do-I-manually-operate-an-automatic-transfer-switch)

3\. To resolve the underlying issue with power transfer, confirm the 194 and 23 control wire connections were made: [What is the layout of the control wires and what do they do?](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires)

> **Note**: Generac does NOT recommend untrained end users attempt to modify or service internal generator wiring. [Generac independent authorized service dealers](https://www.generac.com/home-standby-generators/home-dealer-locator/) are trained to service Generac generators and can be contacted using the dealer lookup tool on [Generac.com](http://generac.com/): [How Can I Find a Generac Service Dealer in My Area?](https://support.generac.com/s/article/How-Can-I-Find-a-Generac-Service-Dealer-in-My-Area)

- The 23 wire is the signal ground side of the transfer circuit and is controlled by the generator control panel. This wire is grounded when a generator automatically starts after a power loss.
- The 194 wire provides 12 VDC to the ATS and is always powered.

### Power does not transfer back to utility when utility power returns

In this scenario, the generator starts when utility power is lost, and the ATS successfully moves to the standby position. However, when utility power returns, the generator shuts down, but the ATS fails to return to the utility position, leaving the home without power.

**If power transfer back to utility does not occur, check the following:**

1\. Confirm utility power is in fact present.

2.In some scenarios, manually operating the transfer switch can provide power to the home, although it does not resolve the underlying issue, and should only be performed after consulting with and understanding the generator's user manual: [How do I manually operate an automatic transfer switch?](https://support.generac.com/s/article/How-do-I-manually-operate-an-automatic-transfer-switch)

3\. To resolve the underlying issue with power transfer, confirm the 194 and 23 control wire connections were made: [What is the layout of the control wires and what do they do?](https://support.generac.com/s/article/What-Is-the-Purpose-of-Generac-Home-Standby-Generator-Control-Wires)

> **Note**: Generac does NOT recommend untrained end users attempt to modify or service internal generator wiring. [Generac independent authorized service dealers](https://www.generac.com/home-standby-generators/home-dealer-locator/) are trained to service Generac generators and can be contacted using the dealer lookup tool on [Generac.com](http://generac.com/): [How Can I Find a Generac Service Dealer in My Area?](https://support.generac.com/s/article/How-Can-I-Find-a-Generac-Service-Dealer-in-My-Area)

- The 23 wire is the signal ground side of the transfer circuit and is controlled by the generator control panel. This wire is grounded when a generator automatically starts after a power loss.
- The 194 wire provides 12 VDC to the ATS and is always powered.


### The generator starts, and a power transfer to the generator occurs with utility power present

> **Note**: Generators can also start in "brown out" situations where the utility voltage drops too low to safely power the house. This can cause the generator to start when it appears that utility power is still present. If brown outs happen regularly in your area, certain models of Generac's Next Generation Automatic Transfer Switches have built in circuitry to protect against brown outs: [What is a brownout?](https://support.generac.com/s/article/What-Is-a-Brown-out-Kit-and-How-Does-It-Work)

**If your generator is running and you have confirmed that utility power is present in your home, follow these troubleshooting steps:**

1.  The generator may be exercising. Guardian series home standby generators with Evo 1 or Evo 2 controllers do not power the home (transfer loads) during an exercise. See [What Is a Generator Exercise?](https://generacpowersystems.lightning.force.com/articles/Knowledge/What-Is-a-Generator-Exercise) for more information

2\. Check the generator's control panel for error codes or alarms: [Generac Home Standby Error Codes: Red/Yellow Light Meanings, Mobile Link Messages & Fixes](https://support.generac.com/s/article/Where-can-I-find-a-list-of-error-codes-for-my-generator)

- If there is an error code, turn the generator MLCB to **OFF**. Allow it to cool down for 5 minutes with no load applied.
- Clear the error code by pressing **OFF**, then **ENTER**. Then, press **MANUAL**.
- If the error code returns, follow the recommended troubleshooting to resolve it. Some error codes require attention from a service dealer:[What Error Codes Do I Need to Call a Dealer For?](https://support.generac.com/s/article/What-Error-Codes-Do-I-Need-to-Call-a-Dealer-For)


3\. Verify the utility service disconnect is **ON or CLOSED**.

- The utility service disconnect is the breaker immediately after the utility meter. This may be in the home's main panel, automatic transfer switch, or a stand-alone box.
- If you have confirmed that utility power is present, and the transfer switch is in the **utility** position, it is safe to turn the generator OFF at the control panel.
- If you have confirmed that utility power is present, and the transfer switch is in the **standby source** or **generator** position, follow this process to safely shut down the generator: [How Do I Shut Down My Generator When It’s Powering My House (During an Outage)?](https://support.generac.com/s/article/How-Do-I-Shut-Down-My-Generator-When-It-s-Powering-My-House)
- For next steps, we recommend reaching out to a [Generac authorized service dealer](https://www.generac.com/home-standby-generators/home-dealer-locator/).

### Blown fuses and wiring issues

The automatic transfer switch has three fuses, each of which protects a corresponding connection wire, providing a pathway for the generator and the transfer switch to communicate. If a fuse is blown, or if a wire is not properly installed, the communication pathway will be disrupted. This prevents communication between the generator and transfer switch, resulting in operational issues.

**Warning: The automatic transfer switch contains live wires and is dangerous. If you suspect a blown fuse or wiring issue, consult a Generac Authorized Service Dealer for help:** [How Can I Find a Generac Service Dealer in My Area?](https://support.generac.com/s/article/How-Can-I-Find-a-Generac-Service-Dealer-in-My-Area)

## Next steps

Once the immediate problem has been resolved, check the generator control panel or Mobile Link for errors, which may help determine the root cause of the issue: [What Error Codes Do I Need to Call a Dealer For?](https://support.generac.com/s/article/What-Error-Codes-Do-I-Need-to-Call-a-Dealer-For)

To resolve the underlying issue with power transfer, we recommend [scheduling service with a Generac IASD](https://www.generac.com/home-standby-generators/home-dealer-locator/).

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

#### Generac Support

##### 24/7/365 Customer Support

- **United States & Canada:**

888-GENERAC (888-436-3722)

- **International:**

1-262-544-4811

- [Email Us](https://www.generac.com/service-support/contact-us)

- [Online Support](https://www.generac.com/service-support/product-support-lookup)


##### More Resources

- [Mobile Link iOS mobile app](https://apps.apple.com/us/app/mobile-link-for-generators/id829129497)

- [Mobile Link Android mobile app](https://play.google.com/store/apps/details?id=com.generac.standbystatus&hl=en_US&gl=US)

- [PWRview iOS mobile app](https://apps.apple.com/us/app/pwrview-for-pwrcell/id1470592171)

- [PWRview Android mobile app](https://play.google.com/store/apps/details?id=com.neurio.generachome&hl=en_CA)

- [Privacy Policy](https://www.generac.com/privacy-policy)

- [Terms & Conditions](https://www.generac.com/terms-conditions)


[**generac.com**](https://www.generac.com/)

Loading

Troubleshooting Automatic transfer switch issues

Smart Assistance

Troubleshooting

Guides

Help & FAQ

Smart Assistance

Troubleshooting

Guides

Help & FAQ

![](https://mavenoidfiles.com/49ea82ji0poq97dl1nq50rbd77t6voftgf6s)

# Which product can we help you with?

![Home Standby Generators](https://mavenoidfiles.com/4vfun73v936290r94oapqqhfi66g7rhp7317)

Home Standby Generators

![Mobile Link](https://mavenoidfiles.com/ei6dujod46q5jnu1o98eork3bqbvu24pkm6s)

Mobile Link

![Portable Generators](https://mavenoidfiles.com/iktv01atd39n959k828vfvpcg4qej2kndd14)

Portable Generators

![Pressure Washers and Water Pumps](https://mavenoidfiles.com/p172sivac29ieq7ahk5karr5hr3o1o9fs35j)

Pressure Washers and Water Pumps

## Menu

Restart

[Powered by](https://mavenoid.com/en/?utm_source=Generac&utm_campaign=embedded-troubleshooter&utm_content=menulink)