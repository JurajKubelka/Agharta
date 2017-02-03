public
registerTeam: newTeam 
	| request packet |
	request := AGHMQTTRegisterTeam new team: newTeam.
	self subscribeToPrivateAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerTeamRequestTopic.
	packet := self readAnswer: request.
	self unsubscribeFromPrivateAnswer: request.
	^ self deliverPacket: packet.