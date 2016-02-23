Scales the width and height of the ofRectangle by multiplying the current width and
height with the (x,y) coordinates of the passed-in ofPoint.

This is equivalent to calling:

```cpp

ofRectangle myRect(0, 0, 100, 100);

ofPoint myScaler(2, 2);

myRect.scaleWidth(myScaler.x);
myRect.scaleHeight(myScaler.y);

```
