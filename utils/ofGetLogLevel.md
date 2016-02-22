Get the current log level. This is useful when combined with ofGetLogLevelName() if you want to print the current log level:
```cpp
ofLogLevel currentLevel = ofGetLogLevel();
ofLog() << "The current log level is " << ofGetLogLevelName(currentLevel);
```
