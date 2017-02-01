tests
testAdd
	"When we add a team for the first time. It should return the same object."
	result := collection add: itemOne.
	self assert: result == itemOne.
	self assert: collection size equals: 1.