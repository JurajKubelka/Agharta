tests
testSendMessage
	self setUpAll.
	aghartaOne registerTeamId: self teamOneId.
	aghartaTwo teams first registerChannelId: self channelOneId.
	aghartaThree teams first channels first sendTextMessage: self messageOneText.
	self aghartasDo: [ :agharta | | channel |
		channel := agharta teams first channels first.
		self assert: channel messages size equals: 1.
		self assert: channel messages first text = self messageOneText.
		self assert: channel messages first author equals: aghartaThree author.
		agharta == aghartaThree
			ifTrue: [ self assert: channel messages first status isSent ]
			ifFalse: [ self assert: channel messages first status isReceived ] ].