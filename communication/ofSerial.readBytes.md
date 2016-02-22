Tries to read 'length' bytes from the connected serial device. In some cases it may read less than 'length' bytes, so for reliable reading of >1 bytes of data the return value must be checked against the number of bytes requested, and if fewer bytes than requested were read then the call must be tried again.

This function should only be called when Serial.available() is reporting >0 bytes available.

An example of how to reliably read 8 bytes:
```cpp

// we want to read 8 bytes
int bytesRequired = 8;
unsigned char bytes[bytesRequired];
int bytesRemaining = bytesRequired;
// loop until we've read everything
while ( bytesRemaining > 0 )
{
  // check for data
  if ( serial.available() > 0 )
  {
    // try to read - note offset into the bytes[] array, this is so
    // that we don't overwrite the bytes we already have
    int bytesArrayOffset = bytesRequired - bytesRemaining;
    int result = serial.readBytes( &bytes[bytesArrayOffset],
      bytesRemaining );

    // check for error code
    if ( result == OF_SERIAL_ERROR )
    {
      // something bad happened
      ofLog( OF_LOG_ERROR, "unrecoverable error reading from serial" );
      // bail out
      break;
    }
    else if ( result == OF_SERIAL_NO_DATA )
    {
      // nothing was read, try again
    }
    else
    {
      // we read some data!
      bytesRemaining -= result;
    }
  }
}
```

Be aware that the type of your buffer can only be unsigned char. If you're trying to receieve ints or signed chars over a serial connection you'll need to do some bit manipulation to correctly interpret that values.
