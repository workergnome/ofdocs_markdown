Perform a linear interpolation of this vector's position towards pnt. p controls the amount to move towards pnt. p is normally between 0 and 1 and where 0 means stay the original position and 1 means move all the way to pnt, but you can also have p greater than 1 overshoot pnt, or less than 0 to move backwards away from pnt.

```cpp
ofVec2f v1( 0, 5 );
ofVec2f v2( 10, 10 );
// go go gadget zeno
v1.interpolate( v2, 0.5 ); // v1 is now (5, 7.5)
v1.interpolate( v2, 0.5 ); // v1 is now (7.5, 8.75)
v1.interpolate( v2, 0.5 ); // v1 is now (8.75, 9.375)
v1.interpolate( v2, 0.5 ); // v1 is now (9.375, 9.6875)
```
