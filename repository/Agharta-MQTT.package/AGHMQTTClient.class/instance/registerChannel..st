public
registerChannel: newChannel
	| request |
	request := AGHMQTTRegisterChannel new channel: newChannel.
	self subscribeToPrivateAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerChannelRequestTopic.