initialize-release
run
	process := [
		self mqttClient runWith: [ :message | self receiveMessage: message ]
	] forkAt: Processor userBackgroundPriority named: self clientId.
