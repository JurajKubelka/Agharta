writing
key: key object: value 
	stream
		nextPut: $";
		nextPutAll: key asString;
		nextPutAll: '":'.
	self object: value.