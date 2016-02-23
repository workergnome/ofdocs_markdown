This clamps the values of your color in case they're too high or low for their 
types, in case you go negative or too use values that are too high, like 
anything < 0 or >1.0 in the case of ofFloatColor.

```cpp
ofFloatColor c( 1, 0, 0 );
c.g = 2; // g now has 2: this is usually invalid!
c.clamp(); // c.g has now been clamped so its value is 1.
```
Also for ofColor anything <0 or >255.

```cpp
    ofColor c( 300, 0, 0 );
    // r component is above the limit() of 255.
    c.clamp(); // c.r has now been clamped so its value is 255.
```

Returns: A reference to itself.
