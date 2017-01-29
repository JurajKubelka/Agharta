public
registeredUsers
	| packet |
	mqttClient subscribeToTopic: self registerUsersTopicGet.
	mqttClient sendMessage: self registeredUsersMessage toTopic: self registerUsersTopicAsk.
	packet := mqttClient readMessage.
	packet contents.
	^ #()