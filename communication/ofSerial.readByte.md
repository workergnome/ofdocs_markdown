Reads and returns a single byte from the requested device. 

```cpp

ofSerial mySerial;
mySerial.setup(0, 57600);
int myByte = 0;
myByte = mySerial.readByte();
if ( myByte == OF_SERIAL_NO_DATA )
  printf("no data was read");
else if ( myByte == OF_SERIAL_ERROR )
  printf("an error occurred");
else
  printf("myByte is %d", myByte);
```
