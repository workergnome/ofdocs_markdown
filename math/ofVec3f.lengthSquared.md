Return the squared length (squared magnitude) of this vector.

```cpp
ofVec3f v(3, 4, 1);
float len = v.length(); // len is 5.0990
```

Use as a much faster alternative to ['length'](#length) if you don't need to know an accurate length but rather just a rough idea of a length (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the lengths are, you just want the shortest). It avoids the square root calculation that is ordinarily required to calculate a length.
