Convenience method to construct an ofColor from a 24 bit hex value.
In some cases, it is convenient to represent colors using a hexadecimal
number. In this case, red, green, and blue values are packed into a
single integer.

The alpha channel is specified separately and will default to the
PixelType's maximum, resulting in an opaque color.

```cpp
    ofColor c = ofColor::fromHex(0xFFFF00); // c is yellow.
```
