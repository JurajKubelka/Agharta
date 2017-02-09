parsing
parseTeamCreated: json
	^ AGHMQTTTeamCreated new
		id: (json at: #id);
		yourself