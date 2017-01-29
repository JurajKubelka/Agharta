initialize-release
registerServices
	self mqttClient 
		subscribeToTopic: self registerUsersTopicAsk;
		subscribeToTopic: self registerUserTopic