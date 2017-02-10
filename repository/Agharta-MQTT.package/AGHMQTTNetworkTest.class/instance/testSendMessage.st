tests
testSendMessage
	| teamOne teamTwo channelTwo channelOne |
	clientOne run. clientTwo run.
	server registerServices; run.
	teamOne := aghartaClientOne registerTeamId: self teamId.
	teamTwo := aghartaClientTwo registerTeamId: self teamId.
	channelTwo := teamTwo registerChannelId: self channelId.
	channelOne := teamOne registerChannelId: self channelId.
	channelOne when: AGHReceivedMessage do: [ :ann | results add: ann. semaphore signal ].
	channelTwo when: AGHReceivedMessage do: [ :ann | results add: ann. semaphore signal ].
	channelOne sendTextMessage: self messageOneText.
	channelTwo sendTextMessage: self messageTwoText.
	self assertSemaphore.
	self assertSemaphore.