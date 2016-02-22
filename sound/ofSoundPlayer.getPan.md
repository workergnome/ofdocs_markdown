Returns the pan position of the sound. -1.0 - 1.0 range.  
0.0 is center pan, -1.0 is full left pan and 1.0 is full right pan. Default is 0.0.

Example:

```cpp
    
    ofSoundPlayer mySound;    
    mySound.load("beat.mp3");    
    mySound.play();    
    mySound.getPan();//Returns 0.0     
    mySound.setPan(1.0f);     
    mySound.getPan();//Returns 1.0
```