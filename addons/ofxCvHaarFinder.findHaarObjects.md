Takes an input ofImage object and allows you to set the minimum width and height of areas that should be returned.

```cpp
camera.grabFrame();
if(camera.isFrameNew())
{
	img.setFromPixels(grab.getPixels());
	finder.findHaarObjects(img);
}
```
