# icestickdemos
Putzing around with the iCEstick Dev Board

## Information

Thanks to these guys for the open tool chain and liberating this chip.
http://www.clifford.at/icestorm/

The demo is available here and this will be variations of a theme. My goal is to eventually build up a small CPU, but baby steps
Thanks for the demos!
https://github.com/cseed/arachne-pnr/tree/master/examples/rot

## Instructions
Compile, route, and place: `make`
Spew onto the chip: `make install`

[Pinout for the Icestick](http://www.pighixxx.com/test/2016/02/icestick-pinout/)

### Setup for Simulation Workflow
@TODO



## Project Log
2016-02-13: Inital commit of PWM module. Need to set the other LED pins on the board to 0. Otherwise it works.
I'd like to get this working with the option of a 'fade' up/down effect. I would also like to connect the Icestick to my PC via the UART. Probably have some sort of register that gets checked for ASCII codes representing different options. Python client.
