Returns true if the thread is currently running. This is especially useful inside the thread's threadedFunction() when you want it to loop continuously until it's told to exit:

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
