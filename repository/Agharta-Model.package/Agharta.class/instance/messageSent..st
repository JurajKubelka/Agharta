network handling
messageSent: anAGHMessage 
	self teams 
		find: anAGHMessage team
		do: [ :team | team messageSent: anAGHMessage ]