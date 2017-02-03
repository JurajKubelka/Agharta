tests
testHash
	self assert: (AAGHUUID new id: self id) hash equals: (AAGHUUID new id: self id) hash