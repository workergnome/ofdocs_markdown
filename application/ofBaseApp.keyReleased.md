This function gets called when a key is released. The value key can be tested against:
```cpp

void keyReleased(int key){

	if (key == 't'){
		; // do something
	} else if (key == ' '){
		; // do something else
	}
}
```

There are more complicated character codes, for keys such as F1-F12, Down, Enter: OF_KEY_BACKSPACE, OF_KEY_RETURN, OF_KEY_PRINTSCR, OF_KEY_F1 - OF_KEY_F12, OF_KEY_LEFT, OF_KEY_UP, OF_KEY_RIGHT, OF_KEY_DOWN, OF_KEY_PAGE_UP, OF_KEY_PAGE_DOWN, OF_KEY_HOME, OF_KEY_END, OF_KEY_INSERT
