accessing
userTwo
	^ AGHRegisteredUser new
		nickname: 'user two';
		privateId: (AGHUUID new id: 'a5c4ee99-9a13-47f3-a355-92399d2fa5ca');
		publicId: (AGHUUID new id: '0b47ab39-2dae-4aaf-ab0b-34468ca80f5e');
		yourself