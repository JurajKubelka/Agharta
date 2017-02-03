visiting
visitAGHRegisteredUser: anAGHRegisteredUser 
	stream 
		nextPutAll: '{"type": "RegisteredUser",';
		nextPutAll: '"nickname": "';
		nextPutAll: anAGHRegisteredUser nickname asString;
		nextPutAll: '", "privateId": '.
	anAGHRegisteredUser privateId accept: self.
	stream nextPutAll: ', "publicId": '.
	anAGHRegisteredUser publicId accept: self.
	stream nextPutAll: '}'