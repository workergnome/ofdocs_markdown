Let you check if two vectors are similar given a tolerance threshold 'tolerance' (default = 0.0001). 

```cpp
ofVec3f v1 = ofVec3f(40, 20, 70);
ofVec3f v2 = ofVec3f(40.01, 19.999, 70.05);
// v1.match(v2, 0.1) is true
// v1.match(v2, 0.01) is false (because (70.5-70) > 0.01)
```
