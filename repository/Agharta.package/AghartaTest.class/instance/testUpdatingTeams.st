tests
testUpdatingTeams
	agharta when: AGHUpdatingTeams do: [ :ann | results add: ann. semaphore signal ].
	agharta updateTeams.
	self assertSemaphore.