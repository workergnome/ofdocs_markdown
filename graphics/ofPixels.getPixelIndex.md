This method tells you want pixel index an x, y pair would be at in the index, for instance:
```cpp
ofColor yellow = ofColor::yellow;
int ind = pix.getPixelIndex(mouseX, mouseY);
pix.setPixel(ind, yellow);
```
