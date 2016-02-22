Returns a pointer to the memory position of the first element of the vector  (x); the second element (y) immediately follows it in memory.

```cpp
ofVec2f v1 = ofVec2f(40, 20);
float * v1Ptr = v1.getPtr();
float x = *(v1Ptr); // x is 40
float y = *(v1Ptr+1); // y is 20
```

This is very useful when using arrays of ofVec2fs to store geometry information, as it allows the vector to be treated as a simple C array of floats that can be passed verbatim to OpenGL.
