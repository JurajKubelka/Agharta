parsing
parseRegisteredUser: json 
	^ AAGHRegisteredUser new
		nickname: (json at: 'nickname');
		privateId: (AAGHUUID new id: (json at: 'privateId'); yourself);
		publicId: (AAGHUUID new id: (json at: 'publicId'); yourself);
		yourself