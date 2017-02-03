tests
testRegisteredChannelFailing
	"check that the team is available with status 'not registered'."
	self setFailingLocalNetwork.
	team when: AGHCannotRegisterChannel do: [ :ann | results add: ann. semaphore signal ].
	team registerChannelId: self channelId.
	self assertSemaphore.
	self assert: results first team id equals: self teamId.
	self assert: results first channel id equals: self channelId.
	self assert: team channels size equals: 1.
	self assert: team channels first id equals: self channelId.
	self assert: team channels first status isNotRegistered.