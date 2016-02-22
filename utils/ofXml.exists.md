Returns whether a path exists. This can be a path to a node, like:
```cpp
xml.exists("picture/pictures[2]/url");
```
or to an attribute:
```cpp
xml.exists("picture/pictures[2][@id]");
```
or even a particular attribute anywhere in the DOM
```cpp
xml.exists("//[@id='9']");
```
