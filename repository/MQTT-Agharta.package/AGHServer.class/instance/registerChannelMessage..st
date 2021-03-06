private - channels
registerChannelMessage: message
	| request channel |
	self log: 'Register channel request received'.
	request := AGHJSONReader new fromByteArray: message contents.
	channel := self registerChannel: request channel.
	self mqttClient 
		sendMessage: (AGHCreated new id: channel id) asByteArray
		toTopic: (self answerTopic: request).
	^ channel