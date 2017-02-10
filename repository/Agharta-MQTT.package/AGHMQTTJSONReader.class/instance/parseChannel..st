parsing
parseChannel: json 
	^ AGHChannel new
		id: (json at: 'id');
		team: (self parse: (json at: 'team'))
		yourself