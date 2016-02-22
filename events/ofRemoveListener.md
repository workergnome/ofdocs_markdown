Removes a listener method from an event. Use it whenever you want a class to stop being notified about an event after having registered it to the method with ofAddListener.

Don't forget to call this before deleting any instance that is listening to an event, if not the event will try to notify a non existent instance and the application will crash.

The syntax is just the same as that of ofAddListener.
