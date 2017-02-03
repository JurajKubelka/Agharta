network handling
updateChannels: aCollection in: anAGHTeam 
	self teams 
		find: anAGHTeam 
		do: [ :team | team updateChannels: aCollection ]