visiting - old (check it)
visitAGHCreated: anAGHCreated 
	stream 
		nextPutAll: '{"type": "Created",';
		nextPutAll: '"id": "';
		nextPutAll: anAGHCreated id asString;
		nextPutAll: '"}'