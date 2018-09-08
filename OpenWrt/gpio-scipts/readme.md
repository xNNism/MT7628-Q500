#### gpio-control.sh:

Example, put the **GPIO14** on **HIGH** state:

` ./gpio-control.sh 14 out 1`
Read the input value of GPIO14:

` ./gpio-control.sh 14 in`

 #### gpio-blink.sh

Finding GPIO pins on the PCB
Sometimes you do not know where the physical GPIO pins are on your device's PCB. In that case, you can use this little script and a multimeter to find out.

Start with

`./gpio-blink.sh 0 30`

which means pin 0 to 30
**Press ctrl-c** to stop the script, then check **which GPIOs have been created**:

`find /sys/class/gpio/gpio*`

Restart the script and measure with a multimeter which pins “blink”.
When you find one, then cut the 0-30 range from above in half;
Repeat until you have identified the gpio number

#### gpio-static.sh

Measure continuosuly the voltage of the pin where you suspect there is a GPIO wired, with a multimeter or another device.
Put **all GPIOs** on **HIGH** state

`./gpio-static.sh 0 31 1`

Put **all GPIOs** on **LOW** state

` ./gpio-static.sh 0 31 0`

If the pin changes the voltage, then **cut the 0-31** range from above in **half**

`./gpio-static.sh 16 31 1`

If the pin doesn't change the voltage,then use the **other** **half** range

`./gpio-static.sh 0 15 1`

Cut again the new range.
Repeat until you have identified the gpio number
Note: some GPIOs may return an error because they're already used by the Linux kernel (i.e LEDS).

#### gpio-input.sh

Finding GPIO pins (input) on the PCB
Sometimes you do not know where the physical GPIO pins (input) are on your device's PCB. In that case, you can use this little script and see screen to find the input.

Start with:

` ./gpio-input.sh 0 30`

which means **pin 0 to 30**
Press button or change the value input.
The script returns on screen: '**read gpio+number**' followed by **'0' or '1'**.

**Press ctrl-c **to stop the script, then **check which GPIOs have been created**:

`find /sys/class/gpio/gpio*`
