tests
testAsByteArrayAsString
	users add: self userOne.
	self assert: users asByteArray asString equals: '{"type":"RegisteredUsers", "users": [{"type": "RegisteredUser","nickname": "user one", "privateId": "4fe6dc1e-1c07-431f-90c1-c7c812a13866", "publicId": "b87fd50c-862e-4202-a103-9864b016d431"}]}'.