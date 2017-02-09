tests
testCannotRegisterTeam
	aghartaClient when: AGHCannotRegisterTeam do: [ :ann | results add: ann. semaphore signal ].
	aghartaClient registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: aghartaClient teams size equals: 1.
	self assert: aghartaClient teams first id equals: self teamId.
	self assert: aghartaClient teams first agharta == aghartaClient.
	self assert: aghartaClient teams first status isNotRegistered.