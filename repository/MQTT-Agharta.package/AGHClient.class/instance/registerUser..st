public
registerUser: subscriber
	^ mqttClient sendMessage: subscriber asByteArray toTopic: self registerUserTopic