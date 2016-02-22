This function gets called repeatedly. It gets called just before draw, so it is an ideal place to do any updating of variables. For example, imagine you have a variable already defined in your ofApp.h called "xpos"

```cpp

void setup(){
	xpos = 0;
}

void update(){
	xpos += 1;
	if (xPos > ofGetWidth()) xPos = 0;
}

void draw(){
	ofDrawRectangle(xPos, 30,10,10);
}
```
