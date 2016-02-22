The ofxTCPServer creates a TCP server that will serve up TCP data to any client that can reach it. To set it up you create an instance of an ofxTCPServer and call setup() passing the port number that you want your server to listen on:

```cpp
TCP.setup(8080);
```

Clients connect to the server and get assigned a unique ID that allows you to send or receive data from them.

That unique ID is important because when a client disconnects, its ID isn't recycled, the 100th client to connect will be 100, even if there are only currently 2 clients connected.

You can check to see how many clients are connected to your server using the getNumClients() method, but to loop through the clients, you'll want to do something like the following:

```cpp

for(int i = 0; i < TCP.getLastID(); i++) // getLastID is UID of all clients
{

		if( TCP.isClientConnected(i) ) { // check and see if it's still around
		  // maybe the client is sending something
		  string str = TCP.receive(i);
		  TCP.send(i, "You sent: "+str);
		}
}
```

There are two send() methods for ASCII string data that both get a message delimiter attached to them (by default [/TCP]):

send(int clientID, string message) - to send to a specific client
sendToAll(string message) - to send to all clients

and there are two methods for sending raw ASCII data, i.e. without the message delimiter attached to them:

sendRawMsg(int clientID, const char * rawMsg, const int numBytes) - to send to a specific client
sendRawMsgToAll(const char * rawMsg, const int numBytes) - to send to a specific client

And finally two methods for sending raw non-ASCII data like bitmaps, sounds, or other binary data formats:

sendRawBytes(int clientID, const char * rawBytes, const int numBytes) - to send to a specific client
sendRawBytesToAll(const char * rawBytes, const int numBytes) - to send to a specific client

There are a few things to note: 
1) TCP is connection based which means it can be slower for things like video streams or lots of blobs of data, but more reliable than UDP. [A not too technical description of the differences](http://www.diffen.com/difference/TCP_vs_UDP)
2) TCP is not HTTP. You'll probably find that tools like browsers send a lot more information that you're initially expecting, but you can easily pull out the parts of their request that you might need from the strings.
3) Just because your ofxTCPServer is up and running does not mean that those ports on your computer will be open or that your IP will be visible. That's all configuration work to be done before your server can talk to the outside world.

The ofxTCPServer is threaded by default, 
