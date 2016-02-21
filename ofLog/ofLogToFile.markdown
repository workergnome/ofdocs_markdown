Enable logging to a file instead of the console.
Set the path and name of the log file and it will be created if it doesn't exist. If it does exist, it will be overwritten unless you set *append* to true, whereas new lines will be added to the bottom of the file.

~~~~{.cpp}
// logs to the console
ofLog() << "a test string";
// enable file logging, append text
// the log file will be created in the data directory
ofLogToFile("myLogFile.txt", true);
// now logs to the file
ofLog() << "a test string";
~~~~

Note: When file logging is enabled, will not see log messages on the console!