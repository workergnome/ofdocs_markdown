Set the usage of texture inside this object. Typically, you will want to draw the movie grabber on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can initialize the sequence grabber like this:
```cpp

myGrabber.setUseTexture(false);
myGrabber.initGrabber(320,240);
```
