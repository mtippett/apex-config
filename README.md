
# Neptune Systems Apex Configuration

This repository serves as a backup of my Neptune Systems Apex AquaController.

The file for the configuration is available by telneting to port 23 on the AquaController,
logging in with your Apex local username/password and issuing a ```l``` command.

## Equipment

- Reefer 250 Salt Water Aquarium (55G main, 10G Sump)
- 2 x Vortech MP40W
- Kessil AP700 - Main Light 
- Kessil MH80 - Sump Light
- Seaside Aquatics CS7 Skimmer
- Neptune System Apex 2016

## Lighting

### Main Light

AP700 is unfortunately not compatible with the Apex Controller.  So there is 
power control and not much else.

### Sump Light

The Sump only has Chaeto macro algae in it.

Sump light is controlled by variable control.  The decision point is to have 
the light controlled by an outlet (and hence configured with the dials) or have it controlled by the variable output.  Currently this is controlled by the variable output.

The general approach is to have the sump on for 18 hours, turned off during the early evening to not provide a visual distraction.  ```SUMP_INTES``` control is 100% up until 18:00 daily.  As a reminder to go to bed, the light color is
controlled by ```SUMP_COLOR``` and switches between full blue, full red and 
then switches back to 40% (Grow) for the rest of the day.

## Alarms

There are a set of alarms that are triggered for the Apex.  

### Problem Alarms

Problem alarms are virtual outlets that are triggered by the power draw for a component being greater than a particular value.  These are set via inspection of the power draw for the component plus a small margin.  The alarms feed into the PROB_MASTER output which also feeds into the ALARM.  An interesting side-effect is that components such as return pump or light that are drawing higher than their normal amount may indicative of the light being set incorrectly, potentially burning the coral.

| Name         | Description             | Power Limit |
| -------------|--------------------------|-----|
| PROB_RETURN  | Problem with return pump | 18W |
| PROB_SKIMMER | Problem with Skimmer     | 32W |
| PROB_MN_LT   | Problem with Main Light  | 55 W |
| PROB_POWERHD | Problem with Powerheads  | 33W |

![Problem Alarms](img/problem-alarm.png)

### Sump Light (
