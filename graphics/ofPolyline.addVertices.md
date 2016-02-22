Adds multiple points at the end of the ofPolyline using a vector of ofPoint objects, which can be declared like so:
```cpp
vector<ofPoint> verts;
// make a pentagon
float size = 80.f;
float X1 = 0.125*sqrt(10 + 2*sqrt(5)) * size;
float X2 = 0.125*sqrt(10 - 2*sqrt(5)) * size;
float Y1 = 0.125*(sqrt(5) - 1) * size;
float Y2 = 0.125*(sqrt(5) + 1) * size;
verts.push_back(ofPoint(0, -0.5 * size));
verts.push_back(ofPoint(-X1, -Y1));
verts.push_back(ofPoint(-X2, Y2));
verts.push_back(ofPoint(X2, Y2));
verts.push_back(ofPoint(X1, -Y1));
ofPolyline p;
p.addVertices(verts);
```
