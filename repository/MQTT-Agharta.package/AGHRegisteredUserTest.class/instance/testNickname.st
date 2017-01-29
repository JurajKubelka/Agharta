tests
testNickname
	registeredUser nickname: self nickname.
	self assert: registeredUser nickname equals: self nickname.