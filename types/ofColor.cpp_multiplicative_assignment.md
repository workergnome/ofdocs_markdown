Set a color to the cumulative product of that color and a scaler, 
then clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(255, 0, 20);
    ofColor c1 *= 10.f;
    // c1 has the RGB value of (255,0,200)
```
