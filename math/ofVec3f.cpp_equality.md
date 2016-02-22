Returns 'true' if each component is the same as the corresponding component in 'vec', ie if 'x == vec.x' and 'y == vec.y' and 'z == vec.z'; otherwise returns 'false'. But you should probably be using ['match'](#match) instead.

```cpp
ofVec3f v1(40, 20, 10); 
ofVec3f v2(50, 30, 10); 
ofVec3f v3(40, 20, 10); 
// ( v1 == v2 ) is false
// ( v1 == v3 ) is true
```
