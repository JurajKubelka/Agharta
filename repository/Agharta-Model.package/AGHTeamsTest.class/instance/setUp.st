running
setUp
	super setUp.
	collection := AGHTeams new.
	collection agharta: agharta.
	itemOne := AGHTeam new id: 'team one'.
	itemOneCopy := AGHTeam new id: 'team one'.
	itemTwo := AGHTeam new id: 'team two'.