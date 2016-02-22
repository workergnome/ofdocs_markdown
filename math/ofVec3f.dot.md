Calculate and return the dot product of this vector with 'vec'.

*Dot product* (less commonly known as *Euclidean inner product*) expresses the angular relationship between two vectors. In other words it is a measure of how *parallel* two vectors are. If they are completely perpendicular the dot product is 0; if they are completely parallel their dot product is either 1 if they are pointing in the same direction, or -1 if they are pointing in opposite directions.

![DOT](../images/ofVec3f.dot.dotproduct.png)
Image courtesy of Wikipedia

```cpp
ofVec3f a1(1, 0, 0);
ofVec3f b1(0, 0, 1); // 90 degree angle to a1
dot = a1.dot(b1); // dot is 0, ie cos(90)

ofVec3f a2(1, 0, 0); 
ofVec3f b2(1, 1, 0); // 45 degree angle to a2
b2.normalize(); // vectors should to be unit vectors (normalized)
float dot = a2.dot(b2); // dot is 0.707, ie cos(45)

ofVec3f a3(0, 1, 0);
ofVec3f b3(0, -1, 0); // 180 degree angle to a3
dot = a3.dot(b3); // dot is -1, ie cos(180)
```
