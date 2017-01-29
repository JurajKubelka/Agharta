testing
testRegisterUser
	server registerServices.
	super testRegisterUser.
	server receiveMessage.
	self assert: server registeredUsers size equals: 1