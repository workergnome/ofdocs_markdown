Returns the bounding box of a string as a rectangle, useful if you want to position the type or calculate the size of graphics that relate to the font.

e.g:
```cpp

//in setup()

franklinBook.loadFont("frabk.ttf", 32);

//in update()

char tempString[255];
ofRectangle rect = franklinBook.getStringBoundingBox(tempString, 0,0);

//in draw

ofSetColor(0xcccccc);
ofDrawRectangle(rect.x, rect.y, rect.width, rect.height);
```
