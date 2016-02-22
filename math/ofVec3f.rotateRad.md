Return a new 'ofVec3f' that is the result of rotating this vector by 'angle' degrees around the given axis.

```cpp
ofVec3f v1(1, 0, 0);
// rotate v1 around the z axis
v1.rotate(45, ofVec3f(0, 0, 1)); // v2 is (√2, √2, 0)

v1.set(1, 0, 0);
// then rotate around the y axis
v1.rotate(45, ofVec3f(0, 1, 0)); // v3 is (√2, 0, √2)
```
