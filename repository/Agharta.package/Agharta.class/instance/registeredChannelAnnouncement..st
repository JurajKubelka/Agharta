announcement handling
registeredChannelAnnouncement: anAGHRegisteredChannel
	self teams 
		find: anAGHRegisteredChannel team 
		do: [ :team | team registeredChannelAnnouncement: anAGHRegisteredChannel ]