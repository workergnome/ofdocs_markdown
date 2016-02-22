Creates an arc at centre, which has the radiusX, radiusY, and begins at angleBegin and ends at angleEnd. To draw a circle with a radius of 50 pixels at 100, 100:

```cpp
path.arc( 100, 100, 50, 50, 0, 360);
```

Note that angleEnd needs to be larger than angleBegin, i.e. 0, 180 is ok, while 180,0 is not.

![](../images/ofPath.arc.example.png)