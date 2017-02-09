parsing
parseTeam: json 
	^ AGHTeam new
		id: (json at: 'id');
		yourself