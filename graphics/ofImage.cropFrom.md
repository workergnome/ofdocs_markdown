This crops another image into the image the cropFrom is being called on to the w,h passed in from the x,y position. The w,h are measured from the x,y, so passing 100, 100, 300, 300 will grab a 300x300 pixel block of data starting from 100, 100.
```cpp
ofImage img1, img2;
img1.loadImage("anImage.png");
img2.cropFrom(img1, 100, 100, 300, 300);
```
