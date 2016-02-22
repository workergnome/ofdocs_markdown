Receives a message to a buffer of size iSize. Receive() returns the number of bytes actually received.

```cpp
char udpMessage[100000];
udpConnection.Receive(udpMessage,100000);
string message=udpMessage;
```
