Returns a pointer to the memory position of the first element of the vector  ('x'); the other elements ('y' and 'z') immediately follow it in memory.

```cpp
ofVec3f v1 = ofVec3f(40, 20, 10);
float * v1Ptr = v1.getPtr();
float x = *(v1Ptr); // x is 40
float y = *(v1Ptr+1); // y is 20
float z = *(v1Ptr+2); // z is 10
```

This is very useful when using arrays of 'ofVec3f's to store geometry information, as it allows the vector to be treated as a simple C array of 'float's that can be passed verbatim to OpenGL.
