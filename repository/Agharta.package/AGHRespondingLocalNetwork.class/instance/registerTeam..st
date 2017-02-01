public
registerTeam: anAGHTeam 
	"do nothing"
	self announce: (AGHRegisteredTeam new team: anAGHTeam copy; yourself)