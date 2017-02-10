tests
testRegisteredChannel
	| team |
	self setUpServer.
	team := aghartaClientOne registerTeamId: self teamId.
	team when: AGHRegisteredChannel do: [ :ann | results add: ann. semaphore signal ].
	team registerChannelId: self channelId.
	self assertSemaphore.
	self assert: results first channel id equals: self channelId.
	self assert: team channels size equals: 1.
	self assert: team channels first id equals: self channelId.
	self assert: team channels first agharta == aghartaClientOne.
	self assert: team channels first status isRegistered.
	self assert: aghartaServer teams first channels size equals: 1.
	self assert: aghartaServer teams first channels first id equals: self channelId.
	self assert: aghartaServer teams first channels agharta == aghartaServer.