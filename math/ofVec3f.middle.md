Set this vector to the midpoint between itself and 'pnt'.

```cpp
ofVec3f v1( 0, 5, 0 );
ofVec3f v2( 10, 10, 20);
// go go gadget zeno
v1.middle( v2 ); // v1 is now (5, 7.5, 10)
v1.middle( v2 ); // v1 is now (7.5, 8.75, 15)
v1.middle( v2 ); // v1 is now (8.75, 9.375, 17.5)
v1.middle( v2 ); // v1 is now (9.375, 9.6875, 18.75)
```
