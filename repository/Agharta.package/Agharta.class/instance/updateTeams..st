network handing
updateTeams: aCollection 
	AGHUpdateTeams new
		teams: self teams;
		received: aCollection;
		execute.
	self announce: (AGHUpdatedTeams new teams: self teams; yourself)