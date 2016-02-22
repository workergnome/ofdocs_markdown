ofPath is a way to create a path or multiple paths consisting of points. It allows you to combine multiple paths consisting of points into a single vector data object that can be drawn to the screen, manipulated point by point, or manipulated with it's child subpaths. It is better at representing and manipulating complex shapes than the [ofPolyline](ofPolyline.html) and more easily represents multiple child lines or shapes as either ofSubPath or ofPolyline instances. By default ofPath uses ofSubPath instances. Closing the path automatically creates a new path:

```cpp
for( int i = 0; i < 5; i++) {
    path.arc( i * 50 + 20, i * 50 + 20, i * 40 + 10, i * 40 + 10, 0, 360); // creates a new ofSubPath
    path.close();
}
```

To use ofPolyline instances, simply set the mode to POLYLINES

```cpp
path.setMode(POLYLINES);
```
