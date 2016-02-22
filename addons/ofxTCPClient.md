The ofxTCPClient is what you used to connect to another server and request information. This other server could be a service running on your local machine, or it could somewhere out there in the internet. As of version 0.8 it doesn't do SSL or other tricky things well, nor does it handle forms or GET and POST requests but you can handle strings or raw bytes. A trivial usage might look like the following:

```cpp
void ofApp::setup()
{
	bool connected = tcpClient.setup("127.0.0.1", 11999);
}

void ofApp::update()
{
	if(tcpClient.isConnected()) {
		string str = tcpClient.receive(); // did anything come in
	}
}

void ofApp::keyReleased(int key)
{
	if(tcpClient.isConnected()) {
		tcpClient.send("HELLO WORLD!");
	}
}
```

To receive something meaningful from a regular webserver you'll want to at least do something like the following:

```cpp
string msg = "GET /index.html HTTP/1.1\r\n";
tcpClient.send(msg);

```

but if you're using ofxTCPServer, then you're free to invent whatever sort of low level communication you'd like. Another important element of the ofxTCPClient and of TCP communication in general, is the message delimiter. You can see that using:

tcpClient.setMessageDelimiter("\n");

This is important because the message delimiter used by your client has to match what your sever is using. If the server uses '\r\n', then your client needs to do the same so that the server knows when a message has ended.
