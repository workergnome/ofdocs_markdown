Returns true iff any of the R, G, B or A components are not equal.

```{cpp.}
    ofColor c1(255, 0, 0); // Red with 100% alpha.
    ofColor c2(255, 0, 0, 128); // Red with 50% alpha.
    bool not_equal = (c1 != c2);
    // not_equal is true
```
