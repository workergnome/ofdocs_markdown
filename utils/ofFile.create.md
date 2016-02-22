If the ofFile contains a file path that doesn't exist yet, calling create() generates the file.

```cpp
ofFile newFile(ofToDataPath("temp.txt"), ofFile::Write); //file doesn't exist yet
newFile.create(); // now file exists
```
