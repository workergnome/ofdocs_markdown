Adds an allowed extension to the list of filters when listing directories. Use this to set any number of filters before calling listDir().

For example if you wanted to only get images in a directory, you may set several filters:

```cpp
string path = "/path/to/images";
ofDirectory dir(path);
dir.allowExt("png");
dir.allowExt("jpg");
dir.allowExt("gif");
dir.listDir();
```
