tests
testRegisteredChannel
	team when: AGHRegisteredChannel do: [ :ann | results add: ann. semaphore signal ].
	team registerChannelId: self channelId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: results first channel id equals: self channelId.