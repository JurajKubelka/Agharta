public
registerChannel: newChannel
	| request packet |
	request := AGHMQTTRegisterChannel new channel: newChannel.
	self subscribeToPrivateAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerChannelRequestTopic.
	[ [ packet := self readAnswer: request ]
		ensure: [ self unsubscribeFromPrivateAnswer: request ] ] 
		on: ConnectionClosed, ConnectionTimedOut 
		do: [ :exception | 
			^ self cannotRegisterChannel: newChannel ].
	^ self deliverResponse: packet.