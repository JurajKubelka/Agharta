receiving
receiveMessage: message
	self log: 'Message received: ', message contents asString.
	message topic = self registerTeamRequestTopic ifTrue: [ self registerTeamMessage: message ].
	self maybeSignalFinish