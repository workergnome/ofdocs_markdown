Creates the directory if it doesn't exist already. A common reason to use create is to ensure that you are able to write files to a known path, like so

```cpp
string path = "/path/to/file";
ofDirectory dir(path);
if(!dir.exists()){
	dir.create(true);
}
//now you can be sure that path exists
```

The recursive boolean flag will indicate if you'd like to create directories all the directories required to reach the given path.  In our example, if "/path/to" didn't already exist, the call to create() would also create these. If recursive were set to false, the directory would not be created.
