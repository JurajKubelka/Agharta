parsing - old (check)
parseRegisterChannel: json 
	^ AAGHRegisterChannel new
		answerTopic: (json at: 'answerTopic');
		channel: (self parse: (json at: 'channel'));
		yourself