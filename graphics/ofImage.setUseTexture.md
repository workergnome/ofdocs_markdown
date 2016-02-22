If you set the ofImage to not use a texture it will contain the pixels of the image but cannot be drawn to the screen without copying its data into an ofTexture instance.

This turns on or off the allocation and use of a texture. any time you change the image (loading, resizing, converting the type), ofImage will upload data to an opengl texture. It may not be necessary, though, and it could be that you need to save memory on the graphics card, or that you don't need to draw this image on the screen. You can call this even before you load an image in to OF:

```cpp
myImage.setUseTexture(false);
myImage.loadImage("blah.gif");
```

Since in the majority of cases, ofImages will be loaded in and drawn onscreen, the default is set to use a texture.
