Draws a string with that typeface, on screen, at point(x,y). For example, you can write some text on screen like this:
```cpp

// in the h file:
ofTrueTypeFont myfont;
.....

// in setup:
myfont.loadFont("arial.ttf", 32);

// in draw:
myfont.drawString("hi!!", 100,100);
```

Your strings can even be multiline:
```cpp

myfont.drawString("a test of multiline text", 300,300);
```

you can also using dynamically gengerated strings. For example, to print the frame rate:
```cpp

char fpsStr[255]; // an array of chars
sprintf(fpsStr, "frame rate: %f", ofGetFrameRate());
myfont.drawString(fpsStr, 100,100);
```
