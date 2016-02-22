An ofMeshFace is a face on one of the ofPrimitive instances. In the ofPrimitive a face consists of 3 points connected together, like in the following image:

You can get a vector of ofMeshFace instances from any ofPrimitive like so:

```cpp

vector<ofMeshFace> triangles = box.getMesh().getUniqueFaces();

```

They're very handy for manipulating individual vertices or doing strange/fun things with intersection and boundary testing, among many many other things.
