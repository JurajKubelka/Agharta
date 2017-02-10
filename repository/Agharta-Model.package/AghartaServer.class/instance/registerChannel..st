public
registerChannel: anAGHChannel
	^ self teams
		add: anAGHChannel team 
		do: [ :team | team channelRegistered: anAGHChannel ]