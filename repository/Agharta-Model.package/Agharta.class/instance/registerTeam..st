network requests
registerTeam: anAGHTeam 
	| team |
	team := self teams add: anAGHTeam beRegistering.
	self announce: (AGHRegisteringTeam new team: anAGHTeam; yourself).
	self network registerTeam: anAGHTeam.
	^ team