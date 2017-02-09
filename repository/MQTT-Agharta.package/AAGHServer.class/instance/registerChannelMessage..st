private - channels
registerChannelMessage: message
	| request channel |
	self log: 'Register channel request received'.
	request := AGHMQTTJSONReader new fromByteArray: message contents.
	channel := self registerChannel: request channel.
	self mqttClient 
		sendMessage: (AAGHCreated new id: channel id) asByteArray
		toTopic: (self answerTopic: request).
	^ channel