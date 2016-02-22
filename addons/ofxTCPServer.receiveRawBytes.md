Receives raw bytes, such as an bitmap or audio data from a client indicated with the clientID:

```cpp

for ( int i = 0; i < server.getLastID(); i++ ) {
  if(server.isClientConnected(i)) {
    int received = server.receiveRawBytes(clientID, *receiveBytes, numBytes);
    }
}
```
