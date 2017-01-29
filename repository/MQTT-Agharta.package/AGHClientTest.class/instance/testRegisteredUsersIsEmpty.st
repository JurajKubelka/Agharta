tests
testRegisteredUsersIsEmpty
	| users |
	users := client registeredUsers.
	self deny: users isNil.
	self assert: users collection isEmpty.