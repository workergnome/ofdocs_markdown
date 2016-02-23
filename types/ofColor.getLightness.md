Return a float that is the average of the three color components. This is used by 
the Lab and HSL color spaces.

```cpp
    ofColor c( 100, 200, 0 );
    float l = c.getLightness();
    // l is 100.f
```
