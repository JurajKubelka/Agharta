network requests
sendMessage: anAGHMessage 
	anAGHMessage 
		author: self author;
		timestamp: (DateAndTime now);
		beSending.
	self messages add: anAGHMessage.
	self announce: (AGHSendingMessage new message: anAGHMessage; yourself).
	self agharta sendMessage: anAGHMessage.