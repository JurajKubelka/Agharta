public
registeredUsers
	self flag: #register.
	mqttClient sendMessage: self registeredUsersMessage toTopic: self registerUsersTopicAsk.
	self flag: 'check if I can first ask, then register for the get topic.'.
	^ #()