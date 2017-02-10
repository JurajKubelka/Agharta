writing
visitAGHTimeStamp: anAGHTimeStamp 
	self
		openObject;
		type: 'Timestamp';
		coma;
		key: 'id' string: anAGHTimeStamp id;
		coma;
		key: 'timestamp' string: anAGHTimeStamp timestamp;
		closeObject