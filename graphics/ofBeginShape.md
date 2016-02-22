Call this to start drawing a new shape. Needs to be followed by a list of vertex points and lastly a call to ofEndShape().
```cpp
//draws a star
ofSetPolyMode(OF_POLY_WINDING_NONZERO);
ofBeginShape();
  ofVertex(400,135);
  ofVertex(215,135);
  ofVertex(365,25);
  ofVertex(305,200);
  ofVertex(250,25);
ofEndShape();
```
