private - users
registerUserMessage: message
	| json user |
	self log: 'Register user request received'.
	json := STONJSON fromString: message contents asString.
	user := AAGHRegisteredUser new 
		nickname: (json at: 'nickname');
		privateId: (AAGHUUID new id: (json at: 'privateId'); yourself);
		publicId: (AAGHUUID new id: (json at: 'publicId'); yourself).
	^ self registerUser: user