accessing
user
	^ AGHRegisteredUser new
			nickname: 'user one';
			publicId: (AGHUUID new id: 'd206f5cf-6678-4d6f-9609-d011754a03bf'; yourself);
			privateId: (AGHUUID new id: 'ff53310b-f7c0-4cec-9fc7-30cb6b6acc22'; yourself);
			yourself