tests
testPrivateId
	subscriber privateId: self privateId.
	self assert: subscriber privateId equals: self privateId.