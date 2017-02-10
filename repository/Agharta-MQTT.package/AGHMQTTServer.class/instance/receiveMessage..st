receiving
receiveMessage: message
	self log: 'Message received: ', message contents asString.
	message topic = self registerTeamRequestTopic ifTrue: [ self registerTeamMessage: message ].
	message topic = self registerChannelRequestTopic ifTrue: [ self registerChannelMessage: message ].
	self maybeSignalFinish