This is the thread run function, the heart of your thread.

You need to override this in your derived class and implement your thread stuff inside. If you do not have a loop inside this function, it will run once then exit. If you want the thread to run until you signal it to stop, use a while loop inside that checks if the thread is should keep running.

Declaration in a .h file:

```cpp

class MyThread : public ofThread {

	...

	// the thread function
	void MyThread::threadedFunction() {
	
		// start
	
		while(isThreadRunning()) {
	
			// do stuff
		}
	
		// done
	}

};

```

In the .cpp file:

```cpp

void ofApp::setup() {

	// create object
	MyThread thread;
	
	// start the thread
	thread.startThread(true, false);	// blocking, non verbose
}

void ofApp::update() {

	// do something else while the thread is running
}

void ofApp::exit() {
	
	// stop the thread
	thread.stopThread();
}

```
