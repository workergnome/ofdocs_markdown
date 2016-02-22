Receives raw bytes, such as an bitmap or audio data from a client indicated with the clientID:

```cpp

for ( int i = 0; i < server.getLastID(); i++ ) {
  if(server.isClientConnected(i)) {
    string received = server.receive(clientID); // will end with delimiter, so make sure client is sending it
    }
}
```
