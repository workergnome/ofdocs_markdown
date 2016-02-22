Construct a plane using this vector and 'vec' (by finding the plane that both lectors lie on), and return the vector that is perpendicular to that plane (the normal to that plane).

```cpp
ofSetLogLevel(OF_LOG_NOTICE);
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0);
ofVec3f p = v1.getPerpendicular(v2);
ofLog(OF_LOG_NOTICE, "%1.1f, %1.1f, %1.1f\n", p.x, p.y, p.z);
// prints "0.0, 0.0, 1.0"
```

This method is usually used to calculate a normal vector to a surface, which can then be used to calculate lighting, collisions, and other 3D effects.
