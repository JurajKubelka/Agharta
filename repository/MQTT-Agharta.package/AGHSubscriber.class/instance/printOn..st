printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		nextPutAll: self nickname asString;
		nextPut: $)