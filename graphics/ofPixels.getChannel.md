This returns a single channel, for instance, the Red pixel values, from the ofPixels object, this gives you a grayscale representation of that one channel.
```cpp
	ofPixels rpix = pix.getChannel(0);
	ofPixels gpix = pix.getChannel(1);
	ofPixels bpix = pix.getChannel(2);
```
