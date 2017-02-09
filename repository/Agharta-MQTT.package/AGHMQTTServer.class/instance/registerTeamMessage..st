receiving
registerTeamMessage: message
	| request team |
	self log: 'Register team request received'.
	request := AGHMQTTJSONReader new fromByteArray: message contents.
	team := self registerTeam: request team.
	self mqttClient 
		sendMessage: (AGHMQTTTeamCreated new id: team id) asByteArray
		toTopic: (self answerTopic: request).
	self log: 'Registred team with id "', team id asString, '"'.
	^ team