network handling
channelRegistered: anAGHChannel 
	self channels
		find: anAGHChannel 
		do: [ :channel | channel beRegistered.
			self announce: (AGHRegisteredChannel new team: self; channel: channel; yourself) ].