network handling
messageReceived: receivedMessage 
	| localMessage |
	localMessage := self messages add: receivedMessage.
	localMessage beReceived.
	self announce: (AGHReceivedMessage new message: localMessage).