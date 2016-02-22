Writes the parameters of the ofRectangle to an ostream.
Typically used to print or save to a file.

Example of storing parameters in rectangle.txt:
```cpp
ofFile file("rectangle.txt",ofFile::WriteOnly);
file << rect;
file.close();
```
