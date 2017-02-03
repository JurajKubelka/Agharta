tests
testRegisteringChannel
	self setNotRespondingLocalNetwork.
	team when: AGHRegisteringChannel do: [ :ann | results add: ann. semaphore signal ].
	team registerChannelId: self channelId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: results first channel id equals: self channelId.
	self assert: team channels size equals: 1.
	self assert: team channels first id equals: self channelId.
	self assert: team channels first status isRegistering.
	self assert: team channels first agharta notNil.
	self assert: team channels first team notNil.
	self assert: team channels first agharta == agharta.
	self assert: team channels first team == team.