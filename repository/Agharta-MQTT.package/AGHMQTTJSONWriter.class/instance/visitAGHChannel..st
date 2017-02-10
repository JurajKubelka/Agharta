visiting
visitAGHChannel: anAGHChannel 
	stream 
		nextPutAll: '{"type":"Channel",';
		nextPutAll: '"id":"';
		nextPutAll: anAGHChannel id asString;
		nextPutAll: '","team":'.
	anAGHChannel team accept: self.
	stream nextPut: $}