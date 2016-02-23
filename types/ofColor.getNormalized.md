Returns the normalized version of this color, without modifying the original. 
See [normalize](#normalize) for more info.

```cpp
    ofColor c(120, 200, 0);
    ofColor n = c.getNormalized(); // Returns c / (200/255)
    // n now has RGB value of (153,255,0)
    // c still has the RGB value of (120, 200, 0)
```
