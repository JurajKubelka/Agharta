network handling
messageReceived: anAGHMessage 
	self channels 
		find: anAGHMessage channel
		do: [ :channel | channel messageReceived: anAGHMessage ]