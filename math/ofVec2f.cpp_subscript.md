Allows to access the x and y components of an ofVec2f as though it is an array:

```cpp
ofVec2f v1 = ofVec2f(40, 20);
float x = v1[0]; // x is 40
float y = v1[1]; // y is 20
```

This function can be handy if you want to do the same operation to both x and y components, as it means you can just make a for loop that repeats twice.
