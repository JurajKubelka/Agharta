running
setUp
	super setUp.
	client := AGHClient new.
	client mqttClient: AGHMQTTMockClient new.