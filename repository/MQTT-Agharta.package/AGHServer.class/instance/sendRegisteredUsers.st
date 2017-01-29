private - users
sendRegisteredUsers
	^ self mqttClient 
		sendMessage: self registeredUsers asByteArray
		toTopic: self registeredUsersTopicGet