Set a color to the cumulative sum of that color's R, G and B components
and a value, then clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(255, 30, 20);
    ofColor c1 += 10.f;
    // c1 has the RGB value of (255,40,30)
```
