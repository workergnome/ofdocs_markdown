The ofVideoPlayer class loads in a movie file via quicktime in windows and OSX or gstreamer in linux, and offers various controls to play the movie, control the properties of the movie, and to access the pixels of a given frame.

Example:

```cpp
ofVideoPlayer myPlayer;
myPlayer.loadMovie("movies/fingers.mov");
```

You need to call play() for your video to begin playing:

```cpp
myPlayer.play();
```

and update to ensure that you're grabbing new frames from the file as the video library decodes them and serves them up as textures:

```cpp

void myApp::update(){
    myPlayer.update(); // get all the new frames
}

```

Just like the ofImage, the ofVideoPlayer can be drawn:

```cpp

myPlayer.draw(20,20); // draw at 20, 20 from the current transform matrix

```

or you can just get the pixels from the player, as we do in the videoGrabberExample in the examples:

```cpp

if (vidGrabber.isFrameNew()){
	int totalPixels = camWidth*camHeight*3;
	unsigned char * pixels = vidGrabber.getPixels();
	for (int i = 0; i < totalPixels; i++){
		videoInverted[i] = 255 - pixels[i];
	}
	texture.loadData(videoInverted, camWidth,camHeight, GL_RGB);
}

```
