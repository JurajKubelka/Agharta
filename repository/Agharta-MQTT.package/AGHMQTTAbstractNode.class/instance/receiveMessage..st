receiving
receiveMessage: message
	self log: 'Message received', message contents asString.
	self delivery deliver: message.
	self maybeSignalFinish