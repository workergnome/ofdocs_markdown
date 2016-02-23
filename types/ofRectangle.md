ofRectangle is a simple container for describing the position and size of a 2D rectangle. The ofRectangle class provides a data structure and a collection of useful helper methods for manipulating rectangles. 

Since the `width` and `height` variables can be negative, the x/y-position is not guaranteed to represent the upper right hand corner. For example, two visually identical rectangles can be represented in the following ways:

```cpp
    ofRectangle myRect(0, 0, 100, 100);
```

or

```cpp
    ofRectangle myRect(100, 100, -100, -100);
```

While both representations will yield the same visual results in all openFrameworks renderers, the results of some method operations that modify x, y, width and height (such as scaling) produce mathematically correct, but visually different results for each of the above representations.

To avoid this ambiguity, users should prefer "standardized" rectangles. "Standardized" rectangles are rectangles whose width >= 0 and height >= 0. The ofRectangle::standardize() method can be used to ensure that the origin is in the "standard" form.
