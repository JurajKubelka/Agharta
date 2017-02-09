initialize-release
registerServices
	self mqttClient 
		subscribeToTopic: self registerTeamRequestTopic