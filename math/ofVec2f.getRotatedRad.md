Return a new ofVec2f that is the result of rotating this vector by angle radians around the origin.

```cpp
ofVec2f v1(1, 0);
ofVec2f v2 = v1.getRotatedRad( PI/4 ); // v2 is (√2, √2)
ofVec3f v3 = v2.getRotated( PI/4 ); // v3 is (0, 1)
```
