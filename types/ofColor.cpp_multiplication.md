Multiplys R, G and B components by a scaler and clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(255, 30, 20);
    ofColor c2 = c1 * 2.f;
    // c2 has the RGB value of (255,60,40)
```
