Returns whether a client ID correlates to a connected client:

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
