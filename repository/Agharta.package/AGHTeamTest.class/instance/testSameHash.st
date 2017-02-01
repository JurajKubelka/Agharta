tests
testSameHash
	self assert: team hash equals: (AGHTeam new id: self teamId; yourself) hash