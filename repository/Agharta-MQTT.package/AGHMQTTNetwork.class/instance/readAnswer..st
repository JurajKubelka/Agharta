private - answers
readAnswer: anAGHMQTTRequest 
	^ self mqttClient readSuchThat: [ :packet |
		packet topic = (self answerTopic: anAGHMQTTRequest) ]