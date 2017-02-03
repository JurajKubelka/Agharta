network requests
registerChannel: anAGHChannel
	self channels add: anAGHChannel beRegistering.
	self
		announce:
			(AGHRegisteringChannel new
				team: self;
				channel: anAGHChannel;
				yourself).
	self agharta registerChannel: anAGHChannel