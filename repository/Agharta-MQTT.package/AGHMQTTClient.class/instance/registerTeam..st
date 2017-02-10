public
registerTeam: newTeam 
	| request |
	request := AGHMQTTRegisterTeam new team: newTeam.
	self subscribeToPrivateAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerTeamRequestTopic.
