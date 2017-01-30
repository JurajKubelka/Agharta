public
registerChannel: aChannel
	| packet request response |
	request := AGHRegisterChannel new channel: aChannel.
	self subscribeToAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerChannelAsk.
	packet := self readAnswer: request.
	self unsubscribeToAnswer: request.
	response := AGHJSONReader new fromByteArray: packet contents.
	response isCreated 
		ifTrue: [ self channels add: aChannel ].
	^ response isCreated