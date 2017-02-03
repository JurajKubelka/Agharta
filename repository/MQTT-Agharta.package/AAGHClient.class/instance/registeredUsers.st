public
registeredUsers
	| packet |
	mqttClient subscribeToTopic: self registeredUsersTopicGet.
	mqttClient sendMessage: self registeredUsersMessageContents toTopic: self registeredUsersTopicAsk.
	packet := mqttClient readMessage.
	^ AAGHJSONReader new fromByteArray: packet contents