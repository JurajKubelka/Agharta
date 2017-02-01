announcement handling
cannotRegisterChannelAnnouncement: anAGHCannotRegisterChannel 
	self teams 
		find: anAGHCannotRegisterChannel team 
		do: [ :team | team cannotRegisterChannelAnnouncement: anAGHCannotRegisterChannel ]