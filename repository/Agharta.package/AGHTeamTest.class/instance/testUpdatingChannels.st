tests
testUpdatingChannels
	team when: AGHUpdatingChannels do: [ :ann | results add: ann. semaphore signal ].
	team updateChannels.
	self assertSemaphore.