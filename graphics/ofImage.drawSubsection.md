Draws a subsection of the image (functions like a clipping mask) without altering any pixel data. (x,y) are the position to draw the cropped image at, (w,h) is the size of the subsection to draw and the size to crop (these can be different using the function below with sw,sh) and (sx,sy) are the source pixel positions in the image to begin cropping from.

```cpp
// crop the image from the mouse position to 100x100 pixels and draw it at 0,0
img.drawSubsection(0, 0, 100, 100, mouseX, mouseY);
```

An example showing how to use drawSubsection can be found in of_release > examples > graphics > imageSubsectionExample
