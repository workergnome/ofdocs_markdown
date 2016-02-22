A helper method that returns a cylinder made of triangles. The resolution settings for the radius, height, and cap are optional (they are set at a default of 12 segments around the radius, 6 segments in the height, and 2 on the cap). You have the option to cap the cylinder or not. The only valid modes are the default OF_PRIMITIVE_TRIANGLE_STRIP and OF_PRIMITIVE_TRIANGLES.
```cpp
ofMesh mesh;
mesh = ofMesh::cylinder(100.0, 200.0);
```

![image of a simple cylinder](ofMesh.cylinder.example.jpg)
