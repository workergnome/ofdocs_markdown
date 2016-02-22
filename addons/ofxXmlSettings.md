## Simple XML loader and saver

ofxXmlSettings allows you to save data to an xml file and to read data from it.
It can be useful, for example, if your OF application is collecting data and you want to export them at the end of the process, or if you want to initialize your application reading values from an xml configuration.

In order to use it, include it in your `ofApp.h`

```cpp
		#include "ofxXmlSettings.h"
		class ofApp : public ofBaseApp{
    // ...
    ofxXmlSettings XML;
    // ...
}
```

To load a file, in your `ofApp.cpp` class

```cpp
		XML.loadFile("mySettings.xml");
```

In the example folder `example/addons/xmlSettingsExample` you can see how to
read field from the xml, add new ones, or change the value of existing ones


### About XML

XML has the advantage of being easy for people to read and edit but still convenient for manipulating with code.

An xml document is composed of tags with values and other tags inside of them. A tag has a name, attributes, values. If a tag contains other tags they are called its children. If a tag is inside of another, the enclosing tag is called its parent. The tags next to one another are siblings.  

```xml
<parentTagName>
	<tagName attributeName="attributeValue">TagValue</tagName>
	<siblingTag />
</parentName> 
```

A very simple example for saving and loading values using ofxXmlSettings variable would look like this:

```cpp
//put some some settings into a file
ofxXmlSettings settings;
settings.setValue("settings:blinkRate", 10);
settings.setValue("settings:gravity", 9.8);
settings.setValue("settings:sceneName", "field");
settings.saveFile("settings.xml"); //puts settings.xml file in the bin/data folder
```

The file this generates would look like this
```xml
<settings>
	<blinkRate>10</blinkRate>
	<gravity>9.8</gravity>
	<sceneName>field</sceneName>
</settings>
```

To load the file again, use a snippet like the following
```cpp
//now load that same file and get the values out
ofxXmlSettings settings;
settings.loadFile("settings.xml");
int blinkRate = settings.getValue("settings:blinkRate", 0.0);
float gravity = settings.getValue("settings:gravity", 0);
string sceneName = settings.getValue("settings:sceneName", "defaultScene");
```

A more complex example involving saving an array.
```cpp
ofxXmlSettings positions;
positions.addTag("positions");
positions.pushTag("positions");
//points is a vector<ofPoint> that we want to save to a file
for(int i = 0; i < points.size(); i++){
	//each position tag represents one point
	positions.addTag("position");
	positions.pushTag("position",i);
	//so set the three values in the file
	positions.addValue("X", points[i].x);
	positions.addValue("Y", points[i].y);
	positions.addValue("Z", points[i].z);
	positions.popTag();//pop position
}
positions.popTag(); //pop position
positions.saveFile("positions.xml");

//This is how you would load that very same file	
ofxXmlSettings settings;
if(settings.loadFile("positions.xml")){
	settings.pushTag("positions");
	int numberOfSavedPoints = settings.getNumTags("position");
	for(int i = 0; i < numberOfSavedPoints; i++){
		settings.pushTag("position", i);
		
		ofPoint p;
		p.x = settings.getValue("X", 0);
		p.y = settings.getValue("Y", 0);
		p.z = settings.getValue("Z", 0);
		
		points.push_back(p);
		settings.popTag();
	}
	
	settings.popTag(); //pop position
}
else{
	ofLogError("Position file did not load!");
}
```

What is this "which" argument I see everywhere used for?

Most of the time you can ignore this and treat it as if it weren't there. But if specified it selects the nth tag with the same tag name at the current root of the document Normally this just means the top level tags in the document - but if you use the pushTag and popTag you can temporarily set the root of the document to be that specified tag. The main idea is to allow you to have multiple tags with the same name.

Here is an example:

```xml
<time>102229</time>  <-- which = 0
<time>298292</time>  <-- which = 1
<time>393393</time>  <-- which = 2
<time>447373</time>  <-- which = 3
```

But if we wanted to group these into multiple <recording> tags and have multiple time values inside
we can use push and pop to move into the recording tags as if they were the document root
```xml
<recording> <-- we temporarily push into here with pushTag("recording", 0);
	<time>19222</time>  <-- to set this we call setValue("time", 19222, 0);   ( which = 0 )
	<time>23232</time>  <-- to set this we call setValue("time", 23232, 1);   ( which = 1 )
</recording> <-- we pop back out here with popTag();
```

```xml
<recording>  <-- we temporarily push into here with pushTag("recording", 1); <-- now we use 1 to select the 2nd recording tag
	<time>33342</time>  <-- setValue("time", 33342, 0);   ( which = 0 )
	<time>22722</time>  <-- setValue("time", 22722, 0);   ( which = 1 )
</recording>
```
