tests
testHash
	self assert: (AGHUUID new id: self id) hash equals: (AGHUUID new id: self id) hash