visiting
visitAGHChannel: anAGHChannel 
	self
		openObject;
		type: 'Channel';
		coma;
		key: 'id' string: anAGHChannel id;
		coma;
		key: 'team' object: anAGHChannel team;
		closeObject