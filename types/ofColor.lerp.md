The lerp method performs a linear interpolation (or [lerp][1]) between
this color and a target color.  In contrast to many of the mathematical
functions found in ofColor_, The linear interpolation is carried out
on _all_ components, R, G, B _and_ A.  The amount is typically a value
between 0.0 and 1.0, with 0.0 yielding an unchanged color and 1.0
yielding a color identical to the target color.

This function allows to blend between colors. For instance, if you have 
red and you want halfway between red and blue, you can do this:

```cpp
ofColor r = ofColor::red;
ofColor b = ofColor::blue;
b.lerp(r, 0.5); // now purple!
```

[1]: http://en.wikipedia.org/wiki/Lerp_(computing) "Lerp"
