tests
testRegisterChannel
	self setUpAll.
	aghartaOne registerTeamId: self teamOneId.
	self registerAnnouncement: AGHRegisteredChannel on: [ :agharta | agharta teams first ].
	aghartaTwo teams first registerChannelId: self channelOneId.
	self assertSemaphores.
	self aghartasDo: [ :agharta | 
		self assert: agharta teams first channels size equals: 1.
		self assert: agharta teams first channels first id = self channelOneId.
		self assert: agharta teams first channels first status isRegistered ].