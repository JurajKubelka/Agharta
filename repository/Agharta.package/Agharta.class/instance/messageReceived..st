network handling
messageReceived: anAGHMessage 
	self teams 
		find: anAGHMessage team
		do: [ :team | team messageReceived: anAGHMessage ]