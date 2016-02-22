Returns the relative path to the directory containing the file, for instance:

```cpp

ofFile file(ofToDataPath("foo.xml"));
cout << file.getEnclosingDirectory(); // prints "../../../data/xml"

```
