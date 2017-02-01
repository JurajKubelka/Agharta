public
registerChannel: anAGHChannel in: anAGHTeam 
	self announce: (AGHCannotRegisterChannel new team: anAGHTeam copy; channel: anAGHChannel copy; yourself)