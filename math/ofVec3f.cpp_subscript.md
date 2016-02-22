Allows to access the individual components of an 'ofVec3f' as though it is an array:

```cpp
ofVec3f v1 = ofVec3f(40, 20, 10);
float x = v1[0]; // x is 40
float y = v1[1]; // y is 20
float z = v1[2]; // z is 10
```

This function can be handy if you want to do the same operation to all 'x', 'y' and 'z' components, as it means you can just make a 'for' loop that repeats 3 times.
