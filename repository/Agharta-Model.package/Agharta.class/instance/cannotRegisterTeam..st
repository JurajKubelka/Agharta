network handling
cannotRegisterTeam: anAGHTeam 
	self teams
		find: anAGHTeam
		do: [ :team | team beNotRegistered.
			self announce: (AGHCannotRegisterTeam new team: team; yourself) ]