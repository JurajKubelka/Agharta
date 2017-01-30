initialize-release
registerServices
	self mqttClient 
		subscribeToTopic: self registeredUsersTopicAsk;
		subscribeToTopic: self registerUserTopic;
		subscribeToTopic: self registerChannelAsk