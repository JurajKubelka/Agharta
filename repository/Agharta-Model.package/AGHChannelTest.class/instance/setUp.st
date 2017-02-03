running
setUp
	super setUp.
	team := AGHTeam new id: self teamId.
	agharta teams add: team.
	channel := AGHChannel new id: self channelId; yourself.
	team channels add: channel.
	