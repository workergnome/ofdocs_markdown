ofBuffer is a convenience class that provides easy methods for reading from and writing to files. It makes heavy use of the standard C++ ostream and istream classes, but also adds in easy ways to convert file data to strings, like:

```cpp
ofBuffer buffer = ofBufferFromFile("someFile.txt"); // reading into the buffer
cout << buffer.getText(); // let's see what it says
```

You can also use the ofBufferFromFile() method to create a buffer from a file:

```cpp
ofBuffer fileBuffer = ofBufferFromFile("someFile.txt");
```
