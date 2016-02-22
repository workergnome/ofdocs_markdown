ofFile wraps functionality for opening, reading, writing, and modifying files on your computer.

```cpp

ofFile file;

file.open(ofToDataPath("temp.xml"), ofFile::ReadWrite, false);
ofBuffer buff = file.readToBuffer();
```

You can do the same with the bufferFromFile method:

```cpp
ofBuffer ofBufferFromFile(const string & path, bool binary=false);
```

To write a buffer to a file, use ofBufferToFile()

```cpp
ofBuffer dataBuffer;
// fill the buffer with something important
bool fileWritten = ofBufferToFile("data.dat", dataBuffer); 

```

You can also compare files using the ==, !=, <, >, <=, >= operators. This is done so that the files can be stored in std::containers and sorted.

```cpp    
ofFile file(ofToDataPath("foo.xml"));
ofFile file2(ofToDataPath("foo2.xml"));    
cout << "is foo less than foo2? " << ((file < file2) ? "true" : "false") << endl;
```
