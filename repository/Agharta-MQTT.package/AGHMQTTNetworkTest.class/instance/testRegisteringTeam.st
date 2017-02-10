tests
testRegisteringTeam
	aghartaClientOne when: AGHRegisteringTeam do: [ :ann | results add: ann. semaphore signal ].
	aghartaClientOne registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: aghartaClientOne teams size equals: 1.
	self assert: aghartaClientOne teams first id equals: self teamId.
	self assert: aghartaClientOne teams first agharta == aghartaClientOne.