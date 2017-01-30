tests
testRegisteredUsersIsEmpty
	| users |
	server registerServices; run.
	users := client registeredUsers.
	self deny: users isNil.
	self assert: users collection isEmpty.