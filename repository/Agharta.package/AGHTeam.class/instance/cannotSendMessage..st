network handling
cannotSendMessage: anAGHMessage 
	self channels
		find: anAGHMessage channel 
		do: [ :channel | channel cannotSendMessage: anAGHMessage ]