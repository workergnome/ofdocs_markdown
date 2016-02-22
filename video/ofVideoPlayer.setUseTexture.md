Set the usage of texture inside this object. Typically, you will want to draw the movie on screen, and so it will be necessary to use a texture, but there may be cases where it helps to not use a texture in order to save memory or for better performance. To disable the internal use of the texture, you can load the movie like this:
```cpp

myMovie.setUseTexture(false);
myMovie.loadMovie("blah.mov");
```
