tests
testUpdatedMessages
	channel when: AGHUpdatedMessages do: [ :ann | results add: ann. semaphore signal ].
	channel updateMessagesSince: DateAndTime now - 10 days.
	self assertSemaphore.
	self assert: results first messages size equals: 0.
