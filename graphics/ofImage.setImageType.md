Set the type of image to one of the following: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. This does cause the image to be reallocated and the texture to be updated, so it can be an expensive operation if done frequently. Converting down, for example from color to grayscale, loses information and is a destructive change.

For example, you can load in a color image, and convert it to grayscale:
```cpp
myImage.loadImage("somethingColor.jpg");
myImage.setImageType(OF_IMAGE_GRAYSCALE);   // now I am grayscale;
```
