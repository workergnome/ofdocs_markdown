The ofXml is a friendly wrapper around the xml functionality included in the Poco::XML library, in particular the Poco::XML::DOM. You can find some more information on that in the Poco Documentation, but hopefully we've wrapped up everything you might need, so that you don't need to dig into Poco itself. Conceptually you should think of an ofXml object as an XML document, because that's exactly what it is: it has a root element, some number of children, and a current element that you're pointing at. For instance, if your XML looked like this:

```cpp
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
	<picture id="1">
		<url>http://apicture.co.uk/pic2.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
```

You load it into an ofXml document like so:

```cpp
ofFile file; 
file.open("pictures.xml"); // open a file
ofBuffer buffer = file.readToBuffer(); // read to a buffer

ofXml pictures;
pictures.loadFromBuffer( buffer.getText() ); // now get the buffer as a string and make XML
```

Now you have an ofXml document, but you're not pointing at anything yet. The way to select which element you're looking at is by setting the current element, using setTo(const string& path), like this:

```cpp
pictures.setTo("pictures"); // now we're at the root
```

or

```cpp
pictures.setTo("pictures/picture[0]"); // now we're at the first picture.
```

or
```cpp
pictures.setTo("pictures/picture[1]"); // now we're at the second picture.
```
or
```cpp
pictures.setTo("pictures/picture[@id=0]"); // now we're at the first picture with the id of 0
```
To traverse, we can use the following methods:
```cpp
int children = pictures.getNumChildren(); // how many do you have?

pictures.setToParent(); // go up a level

pictures.setToSibling(); // go to the next at your level
pictures.setToPrevSibling(); // go to the previous at your level
```
To get values, we use getValue(const string& path), like:
```cpp
pictures.getValue("pictures/picture[0]/url"); // returns "http://apicture.co.uk/pic2.png"
```
To set values, we use setValue(const string& path, const string& value), like:
```cpp
pictures.setValue("pictures/picture[0]/url", "http://superpicks.jp/pic1.png"); // sets the element in the DOM
```
