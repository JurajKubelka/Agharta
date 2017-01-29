private - users
registerUserMessage: message
	| json user |
	json := STONJSON fromString: message contents asString.
	self log: 'Register user request received'.
	user := AGHSubscriber new 
		nickname: (json at: 'nickname');
		privateId: (json at: 'privateId');
		publicId: (json at: 'publicId').
	^ self registerUser: user