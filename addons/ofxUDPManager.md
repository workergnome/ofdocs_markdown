UDP is a network protocol that is faster and less rigid in its packet transmission requirements. Unlike TCP, UDP has no notion of connections nor does it check to see if a packet has been successfuly recieved by the client. A UDP socket can receive datagrams from any server on the network and send datagrams to any host on the network. In addition, datagrams may arrive in any order, never arrive at all, or be duplicated in transit. There are three modes of UDP servers: socket (aka unicast), broadcast, and multicast. 

Unicast refers to a unique host-client. This is a one-to one connection between the client and the server 

Multicast is the delivery of a message or information to a group of destination computers simultaneously in a single transmission. A packet sent to a unicast or broadcast address is only delivered to the host identified by that address. To the contrary, when packet is send to a multicast address, all interfaces identified by that address receive the data. However, multicast has the drawback that it is not well supported by routers and NAT.

Broadcast allows you to call every host within a subnet. It's like Multicast but doesn't require that your network infrastructure support it.

A very simple unicast server looks like this:

```cpp

void ofApp::setup()
{

	//create the socket and set to send to 127.0.0.1:11999
	udpConnection.Create();
	udpConnection.Connect("127.0.0.1",11999);
	udpConnection.SetNonBlocking(true);
}

void ofApp::keyPressed(int key)
{
	string message = "You pressed a key";
	udpConnection.Send(message.c_str(), message.length());
}
```

A very simple unicast client looks like this:

```cpp

void ofApp::setup()
{

	//create the socket and bind to port 11999
	udpConnection.Create();
	udpConnection.Bind(11999);
	udpConnection.SetNonBlocking(true);
}

void ofApp::update()
{
	char udpMessage[1000];
	udpConnection.Receive(udpMessage,1000);
	string message=udpMessage;
}
```

Notice that these are quite different than the creation of TCP servers and clients which you might be more familiar with.

The basic usage of UDP for socket servers and clients looks like so:

UDP Socket Server (sending):
1) Create() - initialize the server
2) Connect() - connect to an IP and a Port that you'll be sending messages on
3) Send() - send the message

UDP Socket Client (receiving):
1) Create() - intialize the client
2) Bind() - bind the client to a port and listen for any UDP messages on that port
3) Receive() - receive any data broadcast over UDP on the port set up to receive on

The basic usage of UDP for multicast looks like so:

UDP Multicast (sending):
1) Create() - initialize the server
2) ConnectMcast() - connect to an IP and a Port that you'll broadcast on
3) Send() - send a message to any listening clients

UDP Multicast (receiving):
1) Create() - initialize the client
2) BindMcast() - bind to a port
3) Receive() - check to see if any data has been received
