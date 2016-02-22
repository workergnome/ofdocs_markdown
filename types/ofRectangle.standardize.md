ofRectangle is a simple container for describing the position
and size of 2D rectangles. Like many rectangle data structures
found in other frameworks and graphics libraries, member
width and height variables can take negative values.
Additionally, x / y position and width / height are publicly
accessible, resulting in great programming freedom.
Consequently, two visually identical rectangles can be
represented in the following ways:

```cpp
ofRectangle myRect(0,0,100,100);
// OR
ofRectangle myRect(100,100,-100,-100);
```

While both representations will yield the same visual
results in all openFrameworks renderers, the results of
some method operations that modify x / y / width / height
(such as scaling) produce mathematically correct, but
visually different results for each of the above
representations.

"Standardized" rectangles are rectangles whose width >= 0 and height >= 0.
This method can be used to ensure that the rectangle is "standardized".
If the rectangle is non-standard, it will modify the x / width and y / height
values into their respective standardized versions.
