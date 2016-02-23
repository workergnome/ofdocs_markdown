Creates a color that is the difference between one color's R, G and B components
and a value, then clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(255, 30, 20);
    ofColor c2 = c1 - 25.f;
    // c2 has the RGB value of (230, 5, 0)
```
