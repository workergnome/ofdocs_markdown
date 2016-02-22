On the Arduino Uno pin: 2-13
returns the last received value (if the pin mode is ARD_INPUT) or the last set value (if the pin mode is ARD_OUTPUT) for the given pin
Note: pin 16-21 can also be used if analog inputs 0-5 are used as digital pins
Returns whether the pin is reading high or low, 1 or 0. You can test against this with an if() statement which is handy:
```cpp
if(arduino.getDigital(pin)){
    // do something on high
}else{
    // do something on low
}
```
