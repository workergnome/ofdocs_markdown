Set this vector to the midpoint between itself and pnt.

```cpp
ofVec2f v1( 0, 5 );
ofVec2f v2( 10, 10 );
// go go gadget zeno
v1.middle( v2 ); // v1 is now (5, 7.5)
v1.middle( v2 ); // v1 is now (7.5, 8.75)
v1.middle( v2 ); // v1 is now (8.75, 9.375)
v1.middle( v2 ); // v1 is now (9.375, 9.6875)
```
