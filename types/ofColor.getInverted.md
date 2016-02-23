Returns the color that is the inverted version (complement) to this color, 
without modifying the original. See [invert](#invert) for more info.

```{cpp.}
    ofColor c(255, 200, 0);
    ofColor i = c.getInverted(); 
    // c still has RGB value of (255,200,0)
    // i has the RGB value (0, 55, 255)
```
