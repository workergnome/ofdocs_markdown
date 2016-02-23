This sets the way that the points in the sub paths are connected. OpenGL can only render convex polygons which means that any shape that isn't convex, i.e. that has points which are concave, going inwards, need to be tessellated into triangles so that OpenGL can render them. If you're using filled shapes with your ofPath this is done automatically for you. The possible options you can pass in are:

OF_POLY_WINDING_ODD
OF_POLY_WINDING_NONZERO
OF_POLY_WINDING_POSITIVE
OF_POLY_WINDING_NEGATIVE
OF_POLY_WINDING_ABS_GEQ_TWO

![ofPath winding modes](ofPath.setPolyWindingMode.example.gif)

So adding the following points:

```cpp
void ofApp::setup(){

    path.lineTo(0, 400);
    path.lineTo(400, 400);
    path.lineTo(400, 0);
    path.lineTo(0, 0); // outer
    path.close();
    path.moveTo(100, 100);
    path.lineTo(100, 300);
    path.lineTo(300, 300);
    path.lineTo(300, 100);
    path.lineTo(100, 100); // inner 1
    path.close();
    path.moveTo(250, 150);
    path.lineTo(150, 150);
    path.lineTo(150, 250);
    path.lineTo(250, 250);
    path.lineTo(250, 150); // inner 2 (backwards)

    path2.lineTo(0, 400);
    path2.lineTo(400, 400);
    path2.lineTo(400, 0);
    path2.lineTo(0, 0); // outer
    path2.close();
    path2.moveTo(100, 100);
    path2.lineTo(300, 100);
    path2.lineTo(300, 300);
    path2.lineTo(100, 300);
    path2.lineTo(100, 100); // inner 1
    path2.close();
    path2.moveTo(150, 150);
    path2.lineTo(250, 150);
    path2.lineTo(250, 250);
    path2.lineTo(150, 250);
    path2.lineTo(150, 150); // inner 2 (fwds)

}

void ofApp::draw(){

    ofTranslate(40,40);
    path.draw();
    ofTranslate(410, 0);
    path2.draw();

}

void ofApp::keyPressed(int key){

    mode++;
    if( mode > 4 ) mode = 0;

    path.setPolyWindingMode((ofPolyWindingMode) mode);
    path2.setPolyWindingMode((ofPolyWindingMode) mode);

}
```

we can see non zero and positive handle the winding differently:

![ofPath winding](ofPath.setPolyWindingMode.path_winding.png)
