tests
testAddTwoTeams
	"There should be just one team"
	collection add: itemOne.
	result := collection add: itemTwo.
	self assert: result == itemTwo.
	self assert: collection size equals: 2.