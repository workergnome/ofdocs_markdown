Writes a single byte to the connected serial device. Check the return value to be sure the data was written.
```cpp

ofSerial mySerial;
mySerial.setup(0, 57600);
unsigned char myByte = 225;
bool byteWasWritten = mySerial.writeByte(myByte);
if ( !byteWasWritten )
  printf("byte was not written to serial port");
```
