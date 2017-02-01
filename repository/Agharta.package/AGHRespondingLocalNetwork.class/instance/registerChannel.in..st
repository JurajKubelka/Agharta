public
registerChannel: anAGHChannel in: anAGHTeam 
	"do nothing"
	self announce: (AGHRegisteredChannel new team: anAGHTeam copy; channel: anAGHChannel copy; yourself)