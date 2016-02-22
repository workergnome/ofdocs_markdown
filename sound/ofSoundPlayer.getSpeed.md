Returns the speed of the sound playback in relation to its normal speed.
So 2.0 would mean the sound is playing twice as fast. 0.5 would mean half as fast. 

Example:
```cpp
    
    ofSoundPlayer mySound;    
    mySound.load("beat.mp3");   
    mySound.getSpeed(); //Returns 1.0   
    mySound.setSpeed(2.0f);   
    mySound.getSpeed(); //Returns 2.0f
```
