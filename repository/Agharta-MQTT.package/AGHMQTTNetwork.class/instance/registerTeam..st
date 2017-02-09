public
registerTeam: newTeam 
	| request packet |
	request := AGHMQTTRegisterTeam new team: newTeam.
	self subscribeToPrivateAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerTeamRequestTopic.
	[ [ packet := self readAnswer: request ]
		ensure: [ self unsubscribeFromPrivateAnswer: request ] ] 
		on: ConnectionClosed, ConnectionTimedOut 
		do: [ :exception | 
			^ self cannotRegisterTeam: newTeam ].
	^ self deliverPacket: packet.