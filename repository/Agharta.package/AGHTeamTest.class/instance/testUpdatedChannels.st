tests
testUpdatedChannels
	team when: AGHUpdatedChannels do: [ :ann | results add: ann. semaphore signal ].
	team askForChannels.
	self assertSemaphore.
	self assert: results first channels size equals: 0.