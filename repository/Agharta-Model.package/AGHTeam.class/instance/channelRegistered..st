network handling
channelRegistered: registeredChannel
	| localChannel |
	localChannel := self channels add: registeredChannel.
	(self skipRegisteredChannelAnnouncement: localChannel comparingTo: registeredChannel)
		ifTrue: [ ^ self ]. 
	localChannel beRegistered.
	self announce: (AGHRegisteredChannel new team: self; channel: localChannel; yourself).
	^ localChannel