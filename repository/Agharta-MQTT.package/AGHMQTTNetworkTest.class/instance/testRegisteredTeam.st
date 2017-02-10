tests
testRegisteredTeam
	self setUpServer.
	aghartaClientOne when: AGHRegisteredTeam do: [ :ann | results add: ann. semaphore signal ].
	aghartaClientOne registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: aghartaClientOne teams size equals: 1.
	self assert: aghartaClientOne teams first id equals: self teamId.
	self assert: aghartaClientOne teams first status isRegistered.
	self assert: aghartaClientOne teams first agharta == aghartaClientOne.
	self assert: aghartaServer teams size equals: 1.
	self assert: aghartaServer teams first id equals: self teamId.
	self assert: aghartaServer teams first agharta == aghartaServer.