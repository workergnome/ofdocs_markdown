Perform a linear interpolation (lerp) between this color and the target. Amount is a percentage represented by a float from 0 to 1.

This function allows to blend between colors. For instance, if you have red and you want halfway between red and blue, you can do this:
```cpp
ofColor r = ofColor::red;
ofColor b = ofColor::blue;
b.lerp(r, 0.5); // now purple!
```
