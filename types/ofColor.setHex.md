In some cases, it is convenient to represent colors using a hexadecimal
number. In this case, red, green and blue values are packed into a
integer.

Set this color to hexColor using a 24 bit hex-style color as normally 
used in web development. The alpha channel is specified separately 
and will default to the PixelType's maximum, resulting in an opaque color.

```cpp
    ofColor c;
    c.setHex(0xFFFFFF); // White.
    c.setHex(0x00FF00); // Green.
    c.setHex(0xFF8000, 128); // Orange, 50% alpha.
```
