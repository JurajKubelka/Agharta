network handling
channelRegistered: anAGHChannel
	^ self teams
		find: anAGHChannel team 
		do: [ :team | team channelRegistered: anAGHChannel ]