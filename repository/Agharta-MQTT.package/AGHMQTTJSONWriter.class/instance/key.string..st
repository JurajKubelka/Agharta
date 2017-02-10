writing
key: key string: value 
	stream 
		nextPut: $";
		nextPutAll: key asString;
		nextPutAll: '":"';
		nextPutAll: value asString;
		nextPut: $"