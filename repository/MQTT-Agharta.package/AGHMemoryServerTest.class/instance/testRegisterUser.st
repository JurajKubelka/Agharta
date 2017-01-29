testing
testRegisterUser
	server registerServices.
	super testRegisterUser.
	server receiveMessage.
	self assert: server registeredUsers collection size equals: 1