parsing
parseRegisterChannel: json 
	^ AGHRegisterChannel new
		answerTopic: (json at: 'answerTopic');
		channel: (self parse: (json at: 'channel'));
		yourself