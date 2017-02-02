tests
testUpdatingMessages
	self setNotRespondingLocalNetwork.
	channel when: AGHUpdatingMessages do: [ :ann | results add: ann. semaphore signal ].
	channel askForMessagesSince: DateAndTime now - 10 days.
	self assertSemaphore.