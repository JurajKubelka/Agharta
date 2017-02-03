tests
testSameHash
	self assert: channel hash equals: (AGHChannel new id: self channelId; yourself) hash