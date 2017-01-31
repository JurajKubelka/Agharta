tests
testUpdatedTeams
	agharta when: AGHUpdatedTeams do: [ :ann | results add: ann. semaphore signal ].
	agharta updateTeams.
	self assertSemaphore.
	self assert: results first teams size equals: 0.