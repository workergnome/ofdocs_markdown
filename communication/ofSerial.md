ofSerial provides a cross platform system for interfacing with the serial port. You can choose the port and baud rate, and then read and send data. Please note that the port must be set manually in the code, so you should be clear what port your device is on. For example, Arduino users should check the arduino app to see what port their device is on. Alternatively the ofSerial class can attempt to communicate with the first available device it finds.

To start up a serial connection to another device you do the following:

```cpp

serial.listDevices();
vector <ofSerialDeviceInfo> deviceList = serial.getDeviceList();
  
int baud = 57600;
serial.setup(0, 57600); //open the first device and talk to it at 57600 baud

```
