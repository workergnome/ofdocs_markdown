Attempts to setup the first available device at a baud rate of 9600. 
```cpp

ofSerial mySerial;
if( mySerial.setup() ){
	printf("serial is setup!
");	
}
```
