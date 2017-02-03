network handling
cannotRegisterChannel: anAGHChannel 
	self channels 
		find: anAGHChannel 
		do: [ :channel | channel beNotRegistered.
			self announce: (AGHCannotRegisterChannel new team: self; channel: channel; yourself) ].