Returns the current position of the playhead as a float between 0.0 and 1.0. 0.0 is the beginning of the sound file and 1.0 is the end.
  
Example:
```cpp    
    ofSoundPlayer mySound;  
    mySound.load("beat.mp3");   
    mySound.play();   
    mySound.getPosition(); //Returns the current position as a percent 0.0-1.0
```
