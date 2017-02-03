network handling
cannotRegisterChannel: anAGHChannel
	self teams
		find: anAGHChannel team 
		do: [ :team | team cannotRegisterChannel: anAGHChannel ]