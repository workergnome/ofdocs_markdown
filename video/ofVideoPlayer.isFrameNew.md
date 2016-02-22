This gets whether there are new pixels in your movies player. This is a way to poll the library that's actually reading your video file to see whether there's something new: For example, if the pixels are new, you could then process them.

```cpp

if (myMovie.isFrameNew()){
	ofPixels p = myPlayer.getPixelsRef();
	// walk over each pixel and make something fun
}
```
