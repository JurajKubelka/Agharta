announcement handling
registeredChannelAnnouncement: anAGHRegisteredChannel 
	self channels
		find: anAGHRegisteredChannel channel
		do: [ :channel | 
				channel beRegistered.
				self announce: (AGHRegisteredChannel new team: self; channel: channel) ]