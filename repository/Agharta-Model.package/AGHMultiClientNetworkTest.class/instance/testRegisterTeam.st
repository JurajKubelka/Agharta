tests
testRegisterTeam
	self setUpAll.
	self registerAnnouncement: AGHRegisteredTeam.
	aghartaOne registerTeamId: self teamOneId.
	self assertSemaphores.
	self aghartasDo: [ :agharta | 
		self assert: agharta teams size equals: 1.
		self assert: agharta teams first id = self teamOneId.
		self assert: agharta teams first status isRegistered ].