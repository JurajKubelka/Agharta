private
skipRegisteredChannelAnnouncement: localChannel comparingTo: registeredChannel 
	^ localChannel status isRegistered and: [ localChannel ~~ registeredChannel ]