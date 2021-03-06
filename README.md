# Morse Code Sequence Generator for the OpenGD77

Radios running OpenGD77 can play morse code sequence as a boot tune.

Setting a morse code boot tune using the OpenGD77CPS is annoyingly complicated:

```
You can create your callsign in Morse code when turning on the radio. ITU Morse standards have the following ratios:

    38,6: dash
    0,2: internal pause
    38,2: dot
    0,6: interchar pause
    0,7: interword pause (unused in a Callsign)

Or perhaps more usefully:

    Dah: 38,6,0,2,

    Dit: 38,2,0,2,

    and change the terminating "2" to a 6 between letters. (No comma on the very end).

    So KI4 (for example) would become:
        38,6,0,2, 38,2,0,2, 38,6,0,6,
        38,2,0,2, 38,2,0,6,
        38,2,0,2, 38,2,0,2, 38,2,0,2, 38,2,0,2, 38,6,0,6

    Remove the spaces and carriage returns once you've got it all worked out and paste into the Boot Tune section under Extras/OpenGD77 support
```

(From the OpenGD77 documentation: https://github.com/rogerclarkmelbourne/OpenGD77/blob/master/docs/OpenGD77_User_Guide.md )



This simple script makes it easier.

Just run the script and type in something you want to have converted. The result will be saved in a file, you will be asked for its name.

```
Where do you want to save the string? If the file already exists, it will be overwritten. [generated.txt] 
String you want to convert: [QRV] amateur radio
A
M
A
T
E
U
R

R
A
D
I
O
Content of generated.txt:
38,2,0,2,38,6,0,6,38,6,0,2,38,6,0,6,38,2,0,2,38,6,0,6,38,6,0,6,38,2,0,6,38,2,0,2,38,2,0,2,38,6,0,6,38,2,0,2,38,6,0,2,38,2,0,6,38,2,0,2,38,6,0,2,38,2,0,6,38,2,0,2,38,6,0,6,38,6,0,2,38,2,0,2,38,2,0,6,38,2,0,2,38,2,0,6,38,6,0,2,38,6,0,2,38,6,0,6
```
