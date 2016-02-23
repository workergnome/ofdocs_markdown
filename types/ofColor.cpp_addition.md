Creates a color that is a sum of one color's R, G and B components and a value, 
then clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(100, 255, 20);
    ofColor c2 = c1 + 30.f
    // c2 has the RGB value of (130,255,50)
```
