Allows you to add a listener method to an event, use it whenever you want a class to be notified about an event.

This is a templated function so the types of the parameters are not predefined types but can be any type as long as the method is one of the listener class' and it has a particular signature.

The signature of the listener method depends on the event type. Every event is defined as:

```cpp
ofEvent<type> event;
```

where type is the type of the parameter that is going to be passed when the event is notified. The listener method can have one of this two signatures:

```cpp
void listenerMethod(type & parameter);
```

```cpp
void listenerMethod(const void * sender, type parameter);
```

Where type must be the same as that of the event it listens to, and sender will be a pointer to the notifying class.

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

The general pattern is:

A notifying class that will notify defines an ofEvent.
A listening class that will listen for that ofEvent calls ofAddListener() using the name of the event, the "this" keyword to refer to itself, and a pointer to the method that you want called when the event occurs
The notifying class calls ofNotifyEvent() when it's time to send the event.
The listening class has its notification method called with the parameters of the ofEvent passed to it.
