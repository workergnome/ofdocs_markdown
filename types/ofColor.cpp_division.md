Creates a new color that is the quotient of a color's R, G and B 
components and a divisor value and clamps each to be > 0 and < limit().

```{cpp.}
    ofColor c1(200, 30, 20);
    ofColor c2 = c1 / 2.f;
    // c2 has the RGB value of (100,15,10)
```
