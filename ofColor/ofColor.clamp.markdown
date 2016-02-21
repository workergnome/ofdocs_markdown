This clamps the values of your color in case they're too high or low for their types, in case you go negative or too use values that are too high, like anything >1.0 in the case of ofFloatColor.

```cpp
ofFloatColor c( 1, 0, 0 );
c.g = 2; // g now has 2: this is usually invalid!
c.clamp(); // c.g has now been clamped so its value is 1.
```