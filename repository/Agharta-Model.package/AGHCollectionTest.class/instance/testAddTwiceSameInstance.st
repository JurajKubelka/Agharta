tests
testAddTwiceSameInstance
	"There should be just one team"
	collection add: itemOne.
	result := collection add: itemOne.
	self assert: result == itemOne.
	self assert: collection size equals: 1.