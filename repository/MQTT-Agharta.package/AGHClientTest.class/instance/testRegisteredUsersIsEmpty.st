tests
testRegisteredUsersIsEmpty
	| users |
	users := client registeredUsers.
	self assert: users isCollection.
	self assert: users isEmpty.