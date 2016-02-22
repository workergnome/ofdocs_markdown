Return the length (magnitude) of this vector.

```cpp
ofVec2f v(3, 4);
float len = v.length(); // len is 5 (3,4,5 triangle)
```

length involves a square root calculation, which is one of the slowest things you can do in programming. If you don't need an exact number but rather just a rough idea of a length (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the lengths are, you just want the shortest), you can use [squareLength](#squareLength) instead.
