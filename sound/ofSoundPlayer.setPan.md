Sets the pan position (pct) of the sound. -1.0 - 1.0 range. 0.0 is center pan, -1.0 is full left pan and 1.0 is full right pan. 

Example:
```cpp
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setPan(-1.0f); //Pans to the left
mySound.setPan(1.0f); //Pans to the right
mySound.setPan(0.0f); //Back to center
```
