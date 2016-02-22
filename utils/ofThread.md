ofThread is a thread base class with a built in mutex. A [thread](http://en.wikipedia.org/wiki/Thread_(computing)) is essentially a mini processing object you can run in parallel to your main application loop and is useful for running time intensive operations without slowing down your app.

####Implementing a Thread

For instance, you have to grab from a camera and waiting for an image slows down your app. You can offload this wait to a thread which tells the main app when an image is ready. To do this, you create a class that inherits from the ofThread class and implement the threadedFunction() function.

Declaration in a .h file:

```cpp

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			cam.update();
			if(cam.isFrameNew()) {
		
				// load the image
				image.setFromPixels(cam.getPixels());
			}
		}
	
		// done
	}
	
	ofVideoGrabber cam;	// the cam
	ofImage image;
};

```

In the application .h inside the ofApp class declare an object of type MyThread like:

```cpp
// create object
MyThread thread;
```

then in the .cpp file:

```cpp

void ofApp::setup() {

	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {
	
	// do something with the thread is running
}

void ofApp::exit() {

	// stop the thread
	thread.stopThread();
}

```

####Shared Resources

With this great power, however, comes great responsibility. If both the thread and your main app loop try to access the image at the same time, bad things happen inside your computer and the app will crash. The image is a considered a "shared resource" and you need to make sure to lock access to it so that only 1 thread can access it a time. You can do this using a ["mutal exclusion" object](http://en.wikipedia.org/wiki/Mutex) by called lock() when you want to access the resource, then unlock() when you are done.

Declaration in a .h file:

```cpp

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			cam.update();
			if(cam.isFrameNew()) {
	
				// lock access to the resource
				lock();
				
				// load the image
				image.setFromPixels(cam.getPixels());	
				// done with the resource
				unlock();
			}	
		}
	
		// done
	}

	ofVideoGrabber cam;	// the cam
	ofImage image;		// the shared resource
};

```

In the .cpp file:

```cpp

void ofApp::setup() {
	
	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {
	
	// lock access to the resource
	thread.lock();
	
	// copy image
	myImage = thread.image;
	
	// done with the resource
	thread.unlock();
}

void ofApp::exit() {

	// stop the thread
	thread.stopThread();
}

```

####Exiting Nicely

As a thread is running in parallel with your application main loop, it's important to remember to tell it to stop before exiting the app. If you don't, you'll get weird errors or hangs because you aren't being nice to your threads. Depending on how you started your thread (blocking or non-blocking mode), you will either stop it for wait for it to finish. See the stopThread() & waitForThread() functions.

####Debugging

Thread errors are *notoriously* difficult to debug sometimes. You will probably see a "Bad Access" runtime error or something similar if multiple threads are trying to access a shared resource simultaneously. Other times, nothing will happen as the thread may be stuck in an infinite loop and you can't stop it. Wee! We assume if you've read this far, you probably accept the difficulties in order to reap the thread speed rewards. 

A useful tool in debugging thread timing and access is the ofThread verbose mode which prints thread events such as starting, stopping, and mutex locking/unlocking. Simply set verbose=true when calling startThread(). Another trick is to use an ofSleepMillis() inside the thread to slow it down so you can see the timing better while debugging it.

####HOO RAH

Ok soldier, lock and load ... good luck!
