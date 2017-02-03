parsing
parseCreated: json 
	^ AAGHCreated new
		id: (json at: 'id');
		yourself