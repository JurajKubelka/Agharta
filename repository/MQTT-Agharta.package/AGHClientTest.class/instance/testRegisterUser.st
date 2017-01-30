tests
testRegisterUser
	server registerServices.
	self assert: (client registerUser: self user).
	server receiveMessage.
	self assert: server registeredUsers collection size equals: 1