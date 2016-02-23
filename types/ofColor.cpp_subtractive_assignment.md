Sets a color's R, G and B components to the difference between each component
and a value, then clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(255, 30, 20);
    ofColor c1 -= 25.f;
    // c1 has the RGB value of (230, 5, 0)
```
