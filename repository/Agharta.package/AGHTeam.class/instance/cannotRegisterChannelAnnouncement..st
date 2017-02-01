announcement handling
cannotRegisterChannelAnnouncement: anAGHCannotRegisterChannel 
	self channels
		find: anAGHCannotRegisterChannel channel
		do: [ :channel | 
				channel beNotRegistered.
				self announce: (AGHCannotRegisterChannel new team: self; channel: channel) ]