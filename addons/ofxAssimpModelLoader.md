ofAssimpModelLoader addon permits loading to memory and processing 3D models in a convenient and unified format. This addon is mostly a wrapper of the "Open Asset Import Library" (assimp), in its version 2.0  ([http://assimp.sourceforge.net/](http://assimp.sourceforge.net/)).

For an example see `openFrameworks/examples/addons/assimpExample`.

At least, these model formats are supported:

- 3DS
- ASE
- DXF
- HMP
- MD2
- MD3
- MD5
- MDC
- MDL
- NFF
- PLY
- STL
- X
- LWO
- OBJ
- SMD
- Collada
- LWO
- Ogre XML
- partly LWS 

In order to load a file to memory, you just need to declare a new variable of type ofAssimpModelLoader and use the function loadModel():

```cpp
ofxAssimpModelLoader model;
model.loadModel("file_name.3DS");
```

You could draw it using:

```cpp
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.drawFaces();
}
```

But probably you would not see the entire model. In the next snippet it appears centered:

```cpp
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.setPosition(ofGetWidth()/2, (float)ofGetHeight() * 0.75 , 0);
   model.drawFaces();
}
```

There are other two ways to represent the model, by its points or by the wiring between the points. In the next snippet the three ways are represented:

```cpp
void ofApp::draw(){
   ofBackground(50, 50, 50, 0);
   ofSetColor(255, 255, 255, 255);

   model.setPosition(ofGetWidth()*2/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_FILL); //same as model.drawFaces();
   model.setPosition(ofGetWidth()*3/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_POINTS); // same as model.drawVertices();
   model.setPosition(ofGetWidth()*4/6, (float)ofGetHeight() * 0.75 , 0);
   model.draw(OF_MESH_WIREFRAME); // same as model.drawWireframe();
}
```

We can use model.setScale() to change the size and setRotation() to rotate the model. The next snippet, for instance, draws the model half it's size and if it was looking at you, now is showing it's back:

```cpp
model.setRotation(0,90,0,1,0);
model.setScale(0.5, 0.5, 0.5);
model.setPosition(ofGetWidth()*2/6, (float)ofGetHeight() * 0.75 , 0);
model.drawFaces();
```

You can accumulate setRotation() functions for rotating different degrees in different axis if you increment the value of the first variable:

```cpp
model.setRotation(0, actualXRotation, 1, 0, 0);
model.setRotation(1, actualYRotation, 0, 1, 0);
model.setRotation(2, actualZRotation, 0, 0, 1);
```
