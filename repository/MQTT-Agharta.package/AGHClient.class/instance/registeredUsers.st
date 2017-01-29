public
registeredUsers
	| packet |
	mqttClient subscribeToTopic: self registeredUsersTopicGet.
	mqttClient sendMessage: self registeredUsersMessageContents toTopic: self registeredUsersTopicAsk.
	packet := mqttClient readMessage.
	^ AGHJSONReader new fromByteArray: packet contents