Reads the parameters of the ofRectangle from an istream and constructs the ofRectangle.
Typically used to load from a stream or a file.

Example of reading parameters from rectangle.txt:
```cpp
ofFile file("rectangle.txt",ofFile::ReadOnly);
file >> rect;
file.close();
```
