tests
testPrivateId
	registeredUser privateId: self privateId.
	self assert: registeredUser privateId equals: self privateId.