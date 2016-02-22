Begins the openGL cycle of the application. It's only called once from main function in main.cpp after setting the window with ofSetupOpenGL.
From 0.06 the app is deleted on exit, so you need to call this function as shown in syntax:

```cpp
ofRunApp(new ofApp());
```
