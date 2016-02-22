ofLog provides a streaming log interface by accepting variables via the ostream operator << similar to cout and cerr.

It builds a string and logs it when the stream is finished. A newline is printed automatically and all the stream controls (endl, flush, hex, etc) work normally.

```cpp

// converts incoming primitive types (int, float, etc) to strings automatically
ofLog() << "a string" << 100 << 20.234f;

```

The log level is explicitly OF_LOG_NOTICE.

See [ofSetLogLevel(logLevel)](./ofLog.html#functions) for more info on log levels.
