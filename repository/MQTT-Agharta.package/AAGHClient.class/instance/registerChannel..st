public
registerChannel: aChannel
	| packet request response |
	request := AAGHRegisterChannel new channel: aChannel.
	self subscribeToAnswer: request.
	mqttClient sendMessage: request asByteArray toTopic: self registerChannelAsk.
	packet := self readAnswer: request.
	self unsubscribeToAnswer: request.
	response := AAGHJSONReader new fromByteArray: packet contents.
	response isCreated 
		ifTrue: [ self channels add: aChannel ].
	^ response isCreated