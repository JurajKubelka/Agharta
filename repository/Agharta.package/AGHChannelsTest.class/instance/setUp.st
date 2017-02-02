initialization
setUp
	super setUp.
	collection := AGHChannels new.
	collection agharta: agharta.
	team := AGHTeam new.
	collection team: team.
	itemOne := AGHChannel new id: 'channel one'.
	itemOneCopy := AGHChannel new id: 'channel one'.
	itemTwo := AGHChannel new id: 'channel two'.