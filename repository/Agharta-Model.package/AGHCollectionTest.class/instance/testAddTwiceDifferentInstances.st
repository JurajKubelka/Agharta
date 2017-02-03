tests
testAddTwiceDifferentInstances
	"There should be just one team"
	collection add: itemOne.
	result := collection add: itemOneCopy.
	self assert: result == itemOne.
	self assert: collection size equals: 1.