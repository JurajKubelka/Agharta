network handling
cannotRegisterChannel: anAGHChannel in: anAGHTeam 
	self teams
		find: anAGHTeam 
		do: [ :team | team cannotRegisterChannel: anAGHChannel ]