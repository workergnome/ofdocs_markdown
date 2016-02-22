ofSoundPlayer actually wraps a dynamic instance of a sound player, that is, it contains an interface to the sound engine being used to load and playback sounds. If you want to set the interface that your system uses, you can pass an ofPtr to an ofSoundPlayer into the ofSoundPlayer and have the ofSoundPlayer manipulate that one instead.

```cpp
ofPtr<ofBaseSoundPlayer> soundPtr(new ofOpenALSoundPlayer());
player.setPlayer(soundPtr);
```
