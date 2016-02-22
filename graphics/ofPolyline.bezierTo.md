Creates a cubic bezier line from the current drawing point with the 2 control points indicated by ofPoint cp1 and cp2, that ends at ofPoint to. For instance, the following:
```cpp
line.addVertex(ofPoint(200, 400));
line.bezierTo(100, 100, 800, 100, 700, 400);
```
Creates this:
![polyline bezier](bezier.png)
The control points are shown in yellow.
