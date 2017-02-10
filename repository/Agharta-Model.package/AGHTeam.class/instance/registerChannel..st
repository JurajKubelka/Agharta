network requests
registerChannel: anAGHChannel
	| channel |
	channel := self channels add: anAGHChannel beRegistering.
	self
		announce:
			(AGHRegisteringChannel new
				team: self;
				channel: channel;
				yourself).
	self agharta registerChannel: anAGHChannel.
	^ channel