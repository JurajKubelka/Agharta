network handling
teamRegistered: anAGHTeam 
	self teams 
		find: anAGHTeam do: [ :team | 
			team beRegistered.
			self announce: (AGHRegisteredTeam new team: team) ]