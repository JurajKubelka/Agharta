writing
visitAGHMessage: anAGHMessage 
	self
		openObject;
		key: 'type' string: 'Message';
		coma;
		key: 'author' object: anAGHMessage author;
		coma;
		key: 'channel' object: anAGHMessage channel;
		coma;
		key: 'id' object: anAGHMessage id;
		coma;
		key: 'contents' object: anAGHMessage contents;
		closeObject