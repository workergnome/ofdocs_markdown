The available method is useful when you want to know how many bytes are available in the serial port. For instance, if you only want to read when there are 8 bytes waiting for you, you would do:

```cpp
if(device.available() > 8) {
  device.readBytes(buffer, 8);
}
```

This is useful when you know how long a complete message from a device is going to be.
