Returns true if each component is *close enough* to its corresponding component in vec, where what is *close enough* is determined by the value of tolerance: 

```cpp
ofVec2f v1 = ofVec2f(40, 20);
ofVec2f v2 = ofVec2f(40.01, 19.999);
// v1.match(v2, 0.1) returns true
// v1.match(v2, 0.001) returns false
```

This is handy if, for example, you want to find out when a point becomes *close enough* to another point to trigger an event.
