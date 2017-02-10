visiting
visitAGHMQTTRegisterChannel: anAGHMQTTRegisterChannel 
	self 
		openObject;
		type: 'RegisterChannel';
		coma;
		key: 'answerTopic' string: anAGHMQTTRegisterChannel answerTopic;
		coma;
		key: 'channel' object: anAGHMQTTRegisterChannel channel;
		closeObject