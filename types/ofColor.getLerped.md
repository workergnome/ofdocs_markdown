Returns this color lerped towards target by amount, without modifying the original. 
See [lerp](#lerp) for more info.

```cpp
    ofColor r = ofColor::red;
    ofColor b = ofColor::blue;
    ofColor p = b.getLerped(r, 0.5); 
    // p is purple, r is still red and b is still blue
```
