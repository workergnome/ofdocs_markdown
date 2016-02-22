Normalize the vector.

*Normalizing* means to scale the vector so that its length (magnitude) is exactly 1, at which stage all that is left is the direction. A normalized vector is usually called a *unit vector*, and can be used to represent a pure direction (heading).

```cpp
ofVec2f v1(5, 0);
v1.normalize(); // v2 is now (1, 0)
ofVec2f v2(5, 5);
v2.normalize(); // v2 is now (√2, √2)
```
