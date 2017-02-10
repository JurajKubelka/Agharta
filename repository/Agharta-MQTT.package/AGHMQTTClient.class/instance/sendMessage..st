public
sendMessage: anAGHMessage 
	mqttClient 
		sendMessage: (anAGHMessage asByteArray)
		toTopic: (self messageTopic: anAGHMessage channel).
	 self agharta messageSent: anAGHMessage.