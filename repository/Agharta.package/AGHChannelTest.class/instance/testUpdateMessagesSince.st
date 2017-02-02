tests
testUpdateMessagesSince
	channel when: AGHUpdatingMessages do: [ :ann | results add: ann. semaphore signal ].
	channel updateMessagesSince: DateAndTime now - 10 days.
	self assertSemaphore.