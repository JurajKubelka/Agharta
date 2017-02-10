parsing
parseRegisterChannel: json 
	^ AGHMQTTRegisterChannel new
		answerTopic: (json at: 'answerTopic');
		channel: (self parse: (json at: 'channel'));
		yourself