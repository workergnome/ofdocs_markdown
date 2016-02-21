ofLog provides a streaming log interface by accepting variables via the ostream operator << similar to cout and cerr.

It builds a string and logs it when the stream is finished. A newline is printed automatically and all the stream controls (endl, flush, hex, etc) work normally.

When a log level is not provided, the log level is explicitly OF_LOG_NOTICE.

~~~~{.cpp}

// converts incoming primitive types (int, float, etc) to strings automatically
ofLog() << "a string" << 100 << 20.234f;

~~~~

ofLog can also be called with an explicit log level. 

~~~~{.cpp}

// set the log level
ofLog(OF_LOG_WARNING) << "a string" << 100 << 20.234f;

~~~~

You can use the derived convenience classes as an alternative for specific log levels: 

  ofLogVerbose()
  ofLogNotice()
  ofLogWarning()
  ofLogError()
  ofLogFatalError()

~~~~{.cpp}

// set the log level
ofLog(OF_LOG_WARNING) << "a string" << 100 << 20.234f;

// this is the same as above
ofLogWarning() << "a string" << 100 << 20.234f;

~~~~

See [ofSetLogLevel()](./ofLog.html#functions) for more info on log levels.
