Return a copy of this vector with its length (magnitude) restricted to a maximum of max units by scaling down if necessary.

```cpp
ofVec2f v1(5, 1); // length is about 5.1
ofVec2f v2(2, 1); // length is about 2.2
ofVec2f v1Limited = v1.getLimited(3); 
// v1Limited is (2.9417, 0.58835) which has length of 3 in the same direction as v1
ofVec2f v2Limited = v2.getLimited(3);
// v2Limited is (2, 1) (same as v2)
```
