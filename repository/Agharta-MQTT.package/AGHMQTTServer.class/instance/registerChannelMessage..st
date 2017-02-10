receiving
registerChannelMessage: message
	| request channel |
	self log: 'Register channel request received'.
	request := AGHMQTTJSONReader new fromByteArray: message contents.
	channel := self registerChannel: request channel.
	self mqttClient 
		sendMessage: (AGHMQTTChannelCreated new item: channel) asByteArray
		toTopic: (self answerTopic: request).
	self log: 'Registred channel with id "', channel id asString, '"'.
	^ channel