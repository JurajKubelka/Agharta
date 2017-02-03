accessing
teams
	^ teams ifNil: [ teams := AGHTeams new agharta: self; yourself ]