Treats both this vector and pnt as points in 2D space, and calculates and returns the distance between them.

```cpp
ofVec2f p1( 3, 4 );
ofVec2f p2( 6, 8 );
float distance = p1.distance( p2 ); // distance is 5
```

distance involves a square root calculation, which is one of the slowest things you can do in programming. If you don't need an exact number but rather just a rough idea of distance (for example when finding the shortest distance of a bunch of points to a reference point, where it doesn't matter exactly what the distances are, you just want the shortest), you can use [squareDistance](#squareDistance) instead.
