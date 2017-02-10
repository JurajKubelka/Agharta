initialize-release
registerServices
	self mqttClient 
		subscribeToTopic: self registerTeamRequestTopic;
		subscribeToTopic: self registerChannelRequestTopic