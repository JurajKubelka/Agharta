public
registerChannel: anAGHChannel 
	self announce: (AGHRegisteringChannel new team: self; channel: anAGHChannel; yourself).
	self agharta registerChannel: anAGHChannel in: self.
	