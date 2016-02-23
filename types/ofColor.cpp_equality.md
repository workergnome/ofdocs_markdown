```{cpp.}
    ofColor c1(255, 0, 0); // Red with 100% alpha.
    ofColor c2(255, 0, 0, 128); // Red with 50% alpha.
    bool is_equal = (c1 == c2);
    // is_equal is false
    c2.a = 255;
    is_equal = (c1 == c2);
    // is_equal is true
```
