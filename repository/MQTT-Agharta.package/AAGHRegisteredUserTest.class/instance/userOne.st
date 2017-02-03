accessing
userOne
	^ AAGHRegisteredUser new 
		nickname: self nickname;
		privateId: self privateId;
		publicId: self publicId;
		yourself