initialization
subscribeToExternalAnnouncements
	self subscribe: AGHRegisteredTeam send: #registeredTeamAnnouncement: to: self for: self
	