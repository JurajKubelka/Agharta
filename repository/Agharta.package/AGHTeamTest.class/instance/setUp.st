running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	agharta := Agharta new.
	agharta id: self aghartaId.
	agharta network: AGHLocalNetwork new.
	team := AGHTeam new id: self teamId.
	agharta teams add: team.