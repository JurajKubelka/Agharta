network handling
updateMessages: aCollection in: anAGHChannel 
	self teams 
		find: anAGHChannel team
		do: [ :team | team updateMessages: aCollection in: anAGHChannel ]