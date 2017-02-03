running
setUp
	super setUp.
	team := AGHTeam new id: self teamId.
	agharta teams add: team.