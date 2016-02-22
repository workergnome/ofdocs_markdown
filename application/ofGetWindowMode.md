eg:
```cpp
int mode = ofGetWindowMode();
		
if(mode == OF_WINDOW){
	cout << "mode is: window mode " << endl;
}else if(mode == OF_FULLSCREEN){
	cout << "mode is: fullscreen mode" << endl;
}else if(mode == OF_GAME_MODE){
	cout << "mode is: game mode" << endl;	
}
```
note: this code is implemented inside the ofAppRunner
