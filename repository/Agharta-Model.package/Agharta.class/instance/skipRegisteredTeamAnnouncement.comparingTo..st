private
skipRegisteredTeamAnnouncement: localTeam comparingTo: registeredTeam
	^ localTeam status isRegistered and: [ localTeam ~~ registeredTeam ]