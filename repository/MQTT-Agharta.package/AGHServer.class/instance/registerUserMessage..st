private - users
registerUserMessage: message
	| json user |
	self log: 'Register user request received'.
	json := STONJSON fromString: message contents asString.
	user := AGHRegisteredUser new 
		nickname: (json at: 'nickname');
		privateId: (AGHUUID new id: (json at: 'privateId'); yourself);
		publicId: (AGHUUID new id: (json at: 'publicId'); yourself).
	^ self registerUser: user