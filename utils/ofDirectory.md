ofDirectory is a class for reading and manipulating directories on the file system through openFrameworks.

Here is a common way to use it:

```cpp
//some path, may be absolute or relative to bin/data
string path = "/my/path/file"; 
ofDirectory dir(path);
//only show png files
dir.allowExt("png");
//populate the directory object
dir.listDir();

//go through and print out all the paths
for(int i = 0; i < dir.size(); i++){
	ofLogNotice(dir.getPath(i));
}
```
