Send a char* of data with length of iSize to all listeners.

```cpp
string message = "A message";
udpConnection.Send(message.c_str(),message.length());

```
