Notifies an event, what makes all it's registered method listeners to be called with the same argument.

This is a templated function so the type of the parameters is not predefined and can be anything as long as the listener methods use the same type for the parameter.

The arguments are passed to the listeners by reference so they can modify them. 

The listener methods are called in the same order they were registered using ofAddListener.

For instance, borrowing from the examples/events/SimpleEventsExample, if we make a class that will broadcast an event:

```cpp

class SimpleEventNotifier {
	ofEvent<float> notify;	// will send an event with a float

	void sendEvent() {
		ofNotifyEvent(notify, ofGetElapsedTimef(), this); 
	}

};

```

We can listen for that in our ofApp:

```cpp
SimpleEventNotifier notifier;
void ofApp::setup() {
	ofAddListener(notifier.notify, this, &ofApp::haveBeenNotified);
}

void ofApp::haveBeenNotified(float &f){
    ofLog() << " event at " << f << endl;
}

```
