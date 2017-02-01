tests
testOneTeam
	"there should be one registered team"
	agharta when: AGHRegisteredTeam do: [ :ann | results add: ann. semaphore signal ].
	agharta registerTeamId: self teamId.
	self assertSemaphore.
	self assert: agharta teams size equals: 1.
	self assert: agharta teams first id equals: self teamId.
