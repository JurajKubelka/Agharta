announcement handling
cannotRegisterTeamAnnouncement: anAGHCannotRegisterTeam 
	self teams 
		detect: [ :team | team = anAGHCannotRegisterTeam team ]
	 	ifFound: [ :team | team beNotRegistered ]
		ifNone: [ "ignore" ]