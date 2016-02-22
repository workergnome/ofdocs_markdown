Adds a child to the ofXml object. So if you have:

```cpp
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
	</picture>
</pictures>
```

you can add a path like so:

```cpp
xml.addPath("pictures/picture/views", "100");
```

and that would create:

```cpp
<pictures>
	<picture id="0">
		<url>http://apicture.co.uk/pic.png</url>
		<width>100</width>
		<height>100</height>
		<views>100</views>
	</picture>
</pictures>
```
