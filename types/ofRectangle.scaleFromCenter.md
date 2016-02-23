Scales both the width and height the ofRectangle from its center point.
The center point of the rectangle will remain fixed and the width, height, x, and y will be adjusted.


This is equivalent to calling:

```cpp

ofRectangle myRect(0, 0, 100, 100);

ofPoint myScaler(2, 2);

myRect.scaleFromCenter(myScaler.x, myScaler.y);

```
