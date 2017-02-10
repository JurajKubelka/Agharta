visiting
visitAGHMQTTRegisterTeam: anAGHMQTTRegisterTeam 
	self 
		openObject;
		type: 'RegisterTeam';
		coma;
		key: 'answerTopic' string: anAGHMQTTRegisterTeam answerTopic;
		coma;
		key: 'team' object: anAGHMQTTRegisterTeam team;
		closeObject 