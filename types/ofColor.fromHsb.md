Convenience method to construct an ofColor from Hsb values.

While ofColor_ represents color using R, G, B, and A components, other
representations are available.  This method allows the user to construct
an ofColor_ from a Hue (H), Saturation (S), and Brightness (B) and an
optional alpha value.

The alpha channel is specified separately and will default to the
PixelType's maximum, resulting in an opaque color.

For more information about HSB, see:
    http://en.wikipedia.org/wiki/HSV_color_space

```cpp
    ofColor c = ofColor::fromHsb(128, 255, 255);
    // c is bright saturated cyan.
```
