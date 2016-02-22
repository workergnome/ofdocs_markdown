Return a new 'ofVec3f' that is the result of rotating this vector by 'angle' radians around the given axis.

```cpp
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
ofVec3f v2 = v1.getRotated(PI/4, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)
// rotate v1 around the y axis
ofVec3f v3 = v1.getRotated(PI/4, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
```
