Restrict the length (magnitude) of this vector to a maximum of max units by scaling down if necessary.

```cpp
ofVec2f v1(5, 1); // length is about 5.1
ofVec2f v2(2, 1); // length is about 2.2
v1.limit(3); 
// v1 is now (2.9417, 0.58835) which has length of 3 in the same direction as at initialization
v2.limit(3);
// v2 is unchanged
```
