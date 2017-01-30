accessing
answerTopic
	^ answerTopic ifNil: [ answerTopic := UUID new asString ]