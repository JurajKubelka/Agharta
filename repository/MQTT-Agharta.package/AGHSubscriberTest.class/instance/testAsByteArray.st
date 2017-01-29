tests
testAsByteArray
	subscriber 
		nickname: self nickname;
		privateId: self privateId;
		publicId: self publicId.
	self assert: subscriber asByteArray notEmpty.