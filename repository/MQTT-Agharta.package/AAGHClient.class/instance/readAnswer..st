private - answers
readAnswer: anAGHRequest 
	^ self mqttClient readSuchThat: [ :packet |
		packet topic = (self answerTopic: anAGHRequest) ]