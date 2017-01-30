parsing
parseChannel: json 
	^ AGHChannel new
		id: (json at: 'id');
		yourself