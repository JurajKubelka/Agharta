accessing
userOne
	^ AGHRegisteredUser new
		nickname: 'user one';
		privateId: (AGHUUID new id: '4fe6dc1e-1c07-431f-90c1-c7c812a13866');
		publicId: (AGHUUID new id: 'b87fd50c-862e-4202-a103-9864b016d431');
		yourself