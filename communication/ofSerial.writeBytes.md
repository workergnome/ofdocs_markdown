This writes bytes into the serial buffer from the buffer pointer passed in:

```cpp
unsigned char buf[3] = {'o', 'f', '!'};
device.writeBytes(&buf[0], 3);
```
