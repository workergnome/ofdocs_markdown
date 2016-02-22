Returns 'true' if any component is different to its corresponding component in 'vec', ie if 'x != vec.x' or 'y != vec.y' or 'z != vec.z'; otherwise returns 'false'.

```cpp
ofVec3f v1(40, 20, 10); 
ofVec3f v2(50, 20, 40); 
ofVec3f v3(40, 20, 10); 
// ( v1 != v2 ) is true
// ( v1 != v3 ) is false
```
