ofSoundStream is used for more low-level access to the sound buffer and uses the RtAudio library developed at McGill University by Gary P. Scavone. RtAudio provides an API that lets you control and read data from the audio hardware of your computer. You can manipulate sound with openFrameworks using two approaches. The first op- tion is to directly manipulate the sound data sent from the sound card by using the ofSoundStream class that is included as a part of the core oF distribution. 
The ofBaseApp class defines two callback methods that let you work with sound: audioIn() is called when the system receives any sound, and audioOut() is called before the system sends sound to the sound card. Both of these callbacks require that the ofSoundStreamSetup() method is called before they will be activated. This tells the RtAudio library to start up, begin processing audio from the system microphone (or line in), and send data to the system sound card:
ofSoundStreamSetup(int nOutputs, int nInputs, int sampleRate, int bufferSize, int nBuffers)
The ofSoundStreamSetup() method has five parameters:
nOutput
Is the number of output channels that your computer supports. Usually this will be two: left and right. If you have a surround sound setup, it might be four or five.
nInputs - Is the number of input channels that your system uses.
sampleRate - Is usually 44,100 kHz, or CD quality, though you may want to make it higher or lower depending on the needs of your application.
bufferSize - Is the size of the buffer that your system supports. At the time of writing this book, on any operating system, it’s probably 256 values.
nBuffers - Is the number of buffers that your system will create and swap out. The more buffers, the faster your computer will write information into the buffer, but the more memory it will take up. You should probably use two for each channel that you’re using. Here’s an example call:

ofSoundStreamSetup(2, 0, 44100, 256, 4);

The previous snippet will send two channels of stereo sound to the audioIn() method each time the underlying RtAudio library sends information from the sound card. This should be called in the setup method of your openFrameworks application. Now, look at the first of two callback methods. The audioIn() method is called whenever the system microphone detects sound:
void audioIn(float * input, int bufferSize, int nChannels) input
Is a pointer to the array of data.
bufferSize - Is the size of the buffer, the number of floating-point values in the input array.
nChannels - Is the number of sound channels represented in the sound data.

The input parameter is always an array of floating-point numbers with the length given in the bufferSize variable. This sounds a little tricky to work with, but as you can see, by using a for loop with a length determined by bufferSize, it isn’t that difficult:

float samples[bufferSize];
for (int i = 0; i < bufferSize; i++) {
// increment the sample counter
samples[sampleCounter] = input[i]; }

Note that this callback won’t be triggered unless you call ofSoundStreamSetup() with one or two channels set as the input, like so:

ofSoundStreamSetup(0, 2, 44100, 256, 4);

Next, the audioOut() method is called when the system needs one buffer worth of audio to send to the sound card. The method sends the array of floating-point information that represents the buffer of audio data, the size of the buffer, and the number of channels:
void audioOut() (float * output, int bufferSize, int nChannels)
To have the audioOut() callback triggered by the system, you would need to call ofSoundStreamSetup() with one or two channels in the output. If you want to alter the data before it’s sent to the sound buffer, you must do it within this method.
