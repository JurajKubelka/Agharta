tests
testRegisteringTeam
	agharta when: AGHRegisteringTeam do: [ :ann | results add: ann. semaphore signal ].
	agharta registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.