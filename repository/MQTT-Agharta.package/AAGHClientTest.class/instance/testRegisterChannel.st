tests
testRegisterChannel
	server registerServices; run.
	self assert: (client registerChannel: self channel).
	self assert: server channels collection size equals: 1.
	self assert: client channels collection size equals: 1.
	