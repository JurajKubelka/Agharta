initialization
subscribeToExternalAnnouncements
	self 
		subscribe: AGHRegisteredTeam send: #registeredTeamAnnouncement: to: self for: self;
		subscribe: AGHCannotRegisterTeam send: #cannotRegisterTeamAnnouncement: to: self for: self;
		subscribe: AGHRegisteredChannel send: #registeredChannelAnnouncement: to: self for: self;
		subscribe: AGHCannotRegisterChannel send: #cannotRegisterChannelAnnouncement: to: self for: self