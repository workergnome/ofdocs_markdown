Sets the logging level so only messages above a certain priority are shown. This is useful if you want see lots of messages when debugging, but then set a higher level so only warnings and errors appear for users.

logLevel values are (in order of priority):
  OF_LOG_VERBOSE
  OF_LOG_NOTICE
  OF_LOG_WARNING
  OF_LOG_ERROR
  OF_LOG_FATAL_ERROR
  OF_LOG_SILENT

Following priority, setting a log level of OF_LOG_ERROR means only error & fatal error messages will be printed. Conversely, setting OF_LOG_VERBOSE means **all** log level messages will be printed.
Here's a code example:

~~~~{.cpp}
// set to warning level
ofSetLogLevel(OF_LOG_WARNING);
ofLogWarning() << "a warning print";  // this prints
ofLogNotice() << "test print";      // this doesn't
ofLogVerbose() << "a verbose print";  // this doesn't either
// set to notice level
ofSetLogLevel(OF_LOG_NOTICE);
ofLogWarning() << "a warning print";  // this still prints
ofLogNotice() << "test print";      // this does too
ofLogVerbose() << "a verbose print";  // this doesn't
~~~~

The default log level is OF_LOG_NOTICE.
OF_LOG_SILENT is a special value which disables **all** messages.