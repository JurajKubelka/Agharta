tests
testRegisteredUsers
	| users |
	client registerUser: self user.
	users := client registeredUsers.
	self assert: users isCollection.
	self assert: users size equals: 1.