Sets the volume of the sound. 0.0 - 1.0 range. 0.0 is silent and 1.0 is full volume. 

Example:
```cpp
ofSoundPlayer mySound;
mySound.load("beat.mp3");
mySound.play();
mySound.setVolume(0.1f); //Sets volume at 10% of maximum
```
