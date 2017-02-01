running
setUp
	super setUp.
	collection := AGHTeams new.
	itemOne := AGHTeam new id: 'team one'.
	itemOneCopy := AGHTeam new id: 'team one'.
	itemTwo := AGHTeam new id: 'team two'.