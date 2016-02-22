Construct a plane using this vector and 'vec' (by finding the plane that both lie on), and set our 'x', 'y' and 'z' to be the vector that is perpendicular to the constructed plane (the normal to the plane).

```cpp
ofSetLogLevel(OF_LOG_NOTICE);
ofVec3f v1(1,0,0);
ofVec3f v2(0,1,0); 
v1.perpendicular(v2); 
ofLog(OF_LOG_NOTICE, "%1.1f, %1.1f, %1.1f\n", v1.x, v1.y, v1.z);
// prints "0.0, 0.0, 1.0'
```

This method is usually used to calculate a normal vector to a surface, which can then be used to calculate lighting, collisions, and other 3D effects.
