as yet unclassified
parseRegisteredUser: json 
	^ AGHRegisteredUser new
		nickname: (json at: 'nickname');
		privateId: (AGHUUID new id: (json at: 'privateId'); yourself);
		publicId: (AGHUUID new id: (json at: 'publicId'); yourself);
		yourself