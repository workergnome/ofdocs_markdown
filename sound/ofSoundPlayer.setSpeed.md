Sets the playback speed of the sound. 1.0 is normal speed. 2.0 is double the normal speed etc. 

Example:
```cpp
ofSoundPlayer mySound;
mySound.loadSound("beat.mp3");
mySound.play();
mySound.setSpeed(2.0f); //Chipmunk Voice
mySound.setSpeed(0.2f); //Isaac Hayes on Muscle Relaxers
mySound.setSpeed(1.0f); //Normal again
```
