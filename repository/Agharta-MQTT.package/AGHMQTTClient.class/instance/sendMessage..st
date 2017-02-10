public
sendMessage: anAGHMessage 
	mqttClient 
		sendMessage: (anAGHMessage asByteArray)
		toTopic: (self messageTopic: anAGHMessage).
	 self agharta messageSent: anAGHMessage.