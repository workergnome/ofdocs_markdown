Sends raw bytes to all connected clients, handy for sending an image or other binary data to a client. For instance:

```cpp
        ofImage img;
        img.loadImage("tmp.jpg");
        int imageBytesToSend = 7800;
        int totalBytesSent = 0;
        int messageSize = 256;
        while( imageBytesToSend > 1 )
        {
            
            if(imageBytesToSend > messageSize) {
                TCP.sendRawBytesToAll((char*) &img.getPixels()[totalBytesSent], messageSize);
                imageBytesToSend -= messageSize;
                totalBytesSent += messageSize;
            } else {
                TCP.sendRawBytesToAll( (char*) &img.getPixels()[totalBytesSent], imageBytesToSend);
                totalBytesSent += imageBytesToSend;
                imageBytesToSend = 0;
            }
        }
```

On the ofxTCPClient side this would look like:

```cpp

        bool dataRecd = false;
        unsigned char buffer[7800];
        int recd = 7800;
        int totalReceived = 0;
        int messageSize = 256;
        while(recd > 0) {
            
            if(recd > messageSize) {
                tcpClient.receiveRawBytes( (char*) &buffer[totalReceived], messageSize);
                recd -= messageSize;
                totalReceived += messageSize;
            } else {
                tcpClient.receiveRawBytes( (char*) &buffer[totalReceived], recd);
                totalReceived += recd;
                recd = 0;
                dataRecd = true;
            }
        }
        
        if(dataRecd) {
            img.setFromPixels( &buffer[0], 50, 52, OF_IMAGE_COLOR);
        }

```

This example is a bit silly because it assumes that you know the exact size of an image, but extending this with different messages to send sizes and types beforehand isn't too difficult. 
