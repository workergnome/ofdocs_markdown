Increases the contrast of the image by blocks, the larger the block, the larger the area that is thresholded at one time. Invert flips the values of the image, making black into white and vice versa. gauss determines whether the image is to be thresholded usinga Gaussian method or simply a plain thresholding. Below you can see the result of using adaptive threshold with two different values.

```cpp
left.adaptiveThreshold(20);
right.adaptiveThreshold(50);
```

![Thresholding an image](../images/ofxCvGrayscaleImage.adaptiveThreshold.example.png)
