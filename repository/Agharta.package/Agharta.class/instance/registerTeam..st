network requests
registerTeam: anAGHTeam 
	self teams add: anAGHTeam beRegistering.
	self announce: (AGHRegisteringTeam new team: anAGHTeam; yourself).
	self network registerTeam: anAGHTeam.
	