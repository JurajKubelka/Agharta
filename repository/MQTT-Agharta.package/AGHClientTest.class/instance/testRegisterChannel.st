tests
testRegisterChannel
	server registerServices.
	self assert: (client registerChannel: self unregisteredChannel).
	server receiveMessage.
	self assert: server channels collection size equals: 1.
	client channels collection size equals: 1.
	