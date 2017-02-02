network handling
cannotSendMessage: anAGHMessage 
	self teams
		find: anAGHMessage team
		do: [ :team | team cannotSendMessage: anAGHMessage ]