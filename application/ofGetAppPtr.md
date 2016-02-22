Useful to access the variables in the main app from other classes. The pointer returned by this function has to be cast from an ofBaseApp pointer, to a pointer to your inherited class, before being used.
ie:
```cpp

//ofApp.h
class ofApp: public ofBaseApp{
   // ...
   int someVar;
}
//myClass.cpp
void myClass::method(){
   doSomething( ((ofApp*)ofGetAppPtr())->someVar );
}
```
