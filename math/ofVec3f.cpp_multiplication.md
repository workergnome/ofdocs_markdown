Returns a new vector ('x'*'vec.x','y'*'vec.y','z'*'vec.z').

```cpp
ofVec3f v1 = ofVec3f(40, 20, 10); 
ofVec3f v2 = ofVec3f(2, 4, 10);
ofVec3f v3 = v1 * v2; // (80, 80, 100)
```

Useful for scaling a 3D point by a non-uniform scale.
