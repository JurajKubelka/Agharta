public
registeredUsers
	| packet |
	mqttClient subscribeToTopic: self registeredUsersTopicGet.
	mqttClient sendMessage: self registeredUsersMessageContents toTopic: self registeredUsersTopicAsk.
	packet := mqttClient readMessage.
	^ AGHMQTTJSONReader new fromByteArray: packet contents