tests
testSentMessage
	self setRespondingLocalNetwork.
	channel when: AGHSentMessage do: [ :ann | results add: ann. semaphore signal ].
	channel sendTextMessage: self text.
	self assertSemaphore.
	self assert: results first message text equals: self text.
	self assert: channel messages size equals: 1.
	self assert: channel messages first text equals: self text.
	self assert: channel messages first status isSent.