printing
printOn: aStream
	aStream
		nextPutAll: self className;
		nextPutAll: ': ';
		nextPutAll: self id asString;
		nextPutAll: ' (';
		nextPutAll: self status name;
		nextPut: $)