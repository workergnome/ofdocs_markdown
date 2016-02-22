This allocates space in the ofImage, both the ofPixels and the ofTexture that the ofImage contains.
```cpp
img.allocate(640, 480, OF_IMAGE_COLOR);
int i = 0;
while ( i < img.getPixels().size() ) {
    img.getPixels()[i] = abs(sin( float(i) / 18.f)) * 255.f; // make some op-art
    i++;
}
img.reloadTexture();
```

It allocates an image of width (w) and height (h). The type can be of three types: OF_IMAGE_GRAYSCALE, OF_IMAGE_COLOR, OF_IMAGE_COLOR_ALPHA. You don't need to call this before loading an image, but for when you want to allocate space ahead of when you are going to use the image.
