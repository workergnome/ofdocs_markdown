Return all three components of the HSB representation of this color 
at the same time.

```cpp
    ofColor red(255,0,0);
    float hue = 0;  // The hue value to set.
    float saturation = 0; // The saturation value to set.
    float brightness = 0; // The brightness value to set.
    red.getHsb(hue, saturation, brightness);
    // Hue is now 0 (for red), saturation is 255, brightness is 255.
```

Refer the [discussion of HSB](#HSB) above.
