Returns 'true' if this vector is pointing in the same direction as 'vec', with an angle error threshold 'tolerance' in radians (default 0.0001).

```cpp
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(4, 2, 7);
// v1.align(v2, 0.0) is true
```
