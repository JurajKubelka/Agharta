public
registerTeam: anAGHTeam 
	self announce: (AGHRegisteringTeam new team: anAGHTeam; yourself).
	self network registerTeam: anAGHTeam.
	