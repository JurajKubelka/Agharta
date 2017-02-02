network handling
messageSent: anAGHMessage 
	self channels 
		find: anAGHMessage channel
		do: [ :channel | channel messageSent: anAGHMessage ]