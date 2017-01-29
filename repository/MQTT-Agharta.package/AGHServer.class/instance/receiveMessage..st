private
receiveMessage: message
	self log: 'Message received: ', message contents asString.
	message topic = self registerUserTopic ifTrue: [ self registerUserMessage: message ].
	self maybeSignalFinish