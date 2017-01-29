tests
testRegisteredUsers
	| users |
	client registerUser: self user.
	users := client registeredUsers.
	self deny: users isNil.
	self assert: users collection size equals: 1.
	self assert: users collection first equals: self user.