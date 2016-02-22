ofLog provides an interface for writing text output from your app. It's basically a more useful version of cout or printf where output can be filtered and written to the console or to a file. 

Sometimes you want to be able to see when something has happened inside the code, but don't need to draw something visually. Oftentimes it's more then enough to print out the state of a few variables when debugging. Other times you need to know if a crash happened while your app was running somewhere, so you log messages and variables to a file you can read after the program crashes.

####Log Levels

You can also set the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users. See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more detail.

Log levels are (in order of priority):

	OF_LOG_VERBOSE
	OF_LOG_NOTICE
	OF_LOG_WARNING
	OF_LOG_ERROR
	OF_LOG_FATAL_ERROR
	OF_LOG_SILENT

**Note**: OF_LOG_SILENT is a special value which disables **all** messages.

####Usage

There are 2 ways you can use ofLog:

####Functional: as a function taking a message

```cpp

// send a single string message, setting the log level
ofLog(OF_LOG_NOTICE, "the number is " + ofToString(10));

// the legacy printf style
ofLog(OF_LOG_NOTICE, "the number is %d", 10); 

```

See [ofLog(logLevel, &message) & ofLog(logLevel, format*, ...)](./ofLog.html#methods) for more details.

####Stream: as a stream using the << stream operator

```cpp

// the stream style, setting the log level
ofLog(OF_LOG_NOTICE) << "the number is " << 10;

// this is the same as the last line, but only sends at log level notice
ofLog() << "the number is " << 10;

// there are also log level specific stream objects,
// one for each level except OF_LOG_SILENT
ofLogVerbose() << "a verbose print"
ofLogNotice() << "a regular notice print";
ofLogWarning() << "uh oh, a warning";
ofLogError() << "oh no, an error occurred!";
ofLogFatalError() << "accckkk, a fatal error!!";

```

**Note**: The log level specific stream objects also take a string argument for the "module". A module is a string that is added to the beginning of the log line and can be used to separate logging messages by setting an independent log level for **that module only**. This module-specific log level has no effect on other modules. See [ofSetLogLevel(module, logLevel)](./ofLog.html#functions) for more detail.

```cpp

// log to a module called "Hello"
ofLogWarning("Hello") << "a warning print";

```

**Warning**: It is important to understand that the log level specific stream objects take the module name as an argument and the log messages via the << operator. Putting your message as a string argument inside the parentheses uses that message as a *module* and so nothing will be printed:

```cpp

// this prints a warning message
ofLogWarning() << "a warning print";

// !!! this does not print a message as the string "a warning print" is the module argument !!!
ofLogWarning("a warning print");

// this prints a warning message to the "Hello" module
ofLogWarning("Hello") << "a warning print";

```

####Log Message Redirection

Last, it's useful to be able to record log messages to a file or send them to a custom destination. For log redirection see ofLogToFile(), ofLogToConsole(), & ofSetLoggerChannel() in the [ofLog functions](./ofLog.html#functions).
