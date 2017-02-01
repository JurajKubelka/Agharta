asserting
assertSemaphore
	self deny: (semaphore waitTimeoutMSecs: self timeoutMSecs)