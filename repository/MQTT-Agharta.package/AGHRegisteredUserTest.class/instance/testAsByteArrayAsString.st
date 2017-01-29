tests
testAsByteArrayAsString
	self setUserOne.
	self assert: registeredUser asByteArray asString notEmpty.
	self 
		assert: registeredUser asByteArray asString 
		equals: '{"type": "RegisteredUser","nickname": "nickname one", "privateId": "891b05ac-340e-40aa-8213-3d2917504e97", "publicId": "b641d75d-f6d5-43be-b926-051e415472a1"}'.