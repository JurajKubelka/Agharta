tests
testRegisteringTeamTimeout
	"check that the team is available with status 'registering'."
	self setNotRespondingLocalNetwork.
	agharta when: AGHRegisteringTeam do: [ :ann | results add: ann. semaphore signal ].
	agharta registerTeamId: self teamId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: agharta teams size equals: 1.
	self assert: agharta teams first id equals: self teamId.
	self assert: agharta teams first status isRegistering.