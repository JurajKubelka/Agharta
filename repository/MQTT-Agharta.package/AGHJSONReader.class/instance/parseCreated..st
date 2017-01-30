parsing
parseCreated: json 
	^ AGHCreated new
		id: (json at: 'id');
		yourself