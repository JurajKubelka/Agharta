tests
testPublicId
	registeredUser publicId: self publicId.
	self assert: registeredUser publicId equals: self publicId.