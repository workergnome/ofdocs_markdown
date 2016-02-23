Returns a clamped version of this color, without modifying the original. 
See [clamp](#clamp) for more info.

```cpp
    ofColor c( 300, 200, 0 );
    // r component is above the limit() of 255.
    ofColor g = c.getClamped(); // c.r is still 300.
    //g has the RGB value (255, 200, 0) 
```
