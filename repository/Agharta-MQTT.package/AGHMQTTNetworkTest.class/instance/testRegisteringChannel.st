tests
testRegisteringChannel
	| team |
	team := aghartaClientOne registerTeamId: self teamId.
	team when: AGHRegisteringChannel do: [ :ann | results add: ann. semaphore signal ].
	team registerChannelId: self channelId.
	self assertSemaphore.
	self assert: results first channel id equals: self channelId.
	self assert: team channels size equals: 1.
	self assert: team channels first id equals: self channelId.
	self assert: team channels first agharta == aghartaClientOne.