tests
testRegisteredTeam
	server registerServices; run.
	aghartaClient when: AGHRegisteredTeam do: [ :ann | results add: ann. semaphore signal ].
	aghartaClient registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: aghartaClient teams size equals: 1.
	self assert: aghartaClient teams first id equals: self teamId.
	self assert: aghartaClient teams first status isRegistered.
	self assert: aghartaClient teams first agharta == aghartaClient.
	self assert: aghartaServer teams size equals: 1.
	self assert: aghartaServer teams first id equals: self teamId.
	self assert: aghartaServer teams first agharta == aghartaServer.