network handling
channel: anAGHChannel registeredIn: anAGHTeam 
	self teams
		find: anAGHTeam 
		do: [ :team | team channelRegistered: anAGHChannel ]