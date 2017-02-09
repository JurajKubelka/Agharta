parsing
parseRegisterTeam: json 
	^ AGHMQTTRegisterTeam new
		answerTopic: (json at: 'answerTopic');
		team: (self parse: (json at: 'team'));
		yourself