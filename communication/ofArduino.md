This is a way to control an Arduino that has had the firmata library loaded onto it, from OF. To load firmata onto your Arduino,  run the Arduino IDE, open the Examples > Firmata > StandardFirmata sketch, and upload it to the Arduino board.
Once the ofArduino instance returns true from isArduinoReady() you can set the mode of the different digital pins using sendDigitalPinMode()
   
```cpp
sendDigitalPinMode(9, ARD_INPUT)
```

This sets pin 9 to input so that it can read a button press, while:

```cpp
sendDigitalPinMode(9, ARD_PWM)
```

sets pin 9 to be a PWM out pin. Note that this only works on pins that are PWM enabled.
