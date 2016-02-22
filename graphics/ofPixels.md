ofPixels is an object for working with blocks of pixels, those pixels can be copied from an image that you've loaded, something that you've drawn using ofGraphics, or a ofVideoGrabber instance. You can create an image from pixels, using on ofPixels object like so:
```cpp
ofPixels p;
ofLoadImage(p, "pathToImage.jpg");
```
ofPixels represents pixels data on the CPU as opposed to an ofTexture which represents pixel data on the GPU. They can easily be made inter-operational though:
```cpp
ofTexture tex;
// do some stuff with t
ofPixels pix;
tex.readToPixels(pix); // now all the pixels from tex are in pix
```
You can access the pixels in an ofPixels object with the [] operator.
```cpp
ofPixels pix;
// put some stuff in the pixels
int i = 0;
while( i < pix.size()) {
	char c = pix[i];
	i++;
}
```

You can think of the ofPixels as the CPU side representation of pixel data that can be sent to the GPU as an ofTexture object. To draw pixels, you need to put them into an ofTexture and to manipulate an ofTextures pixel data you need an ofPixels object.
