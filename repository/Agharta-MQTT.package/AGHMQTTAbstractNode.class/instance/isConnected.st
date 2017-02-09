testing
isConnected
	^ mqttClient notNil and: [ self mqttClient isConnected ]