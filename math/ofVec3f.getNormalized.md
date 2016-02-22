Return a normalized copy of this vector. 

*Normalization* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

```cpp
ofVec3f v1(5, 0, 0);
ofVec3f v1Normalized = v1.getNormalized(); // (1, 0, 0)
ofVec3f v2(5, 0, 5);
ofVec3f v2Normalized = v2.getNormalized(); // (√2, 0, √2)
```
