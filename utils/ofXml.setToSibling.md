This sets the current element to the previous sibling element. If your document looks like this:

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

Then you could do the following:

```cpp
xml.setCurrentElement("pictures/picture[0]"); // now current element is picture with id=0
xml.setCurrentElementToSibling(); // now current element is picture with id=1
```
