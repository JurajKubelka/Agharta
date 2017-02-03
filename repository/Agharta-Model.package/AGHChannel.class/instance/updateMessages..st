network handling
updateMessages: aCollection 
	aCollection do: [ :eachMessage | 
		self messages add: eachMessage ].
	self announce: (AGHUpdatedMessages new messages: aCollection; yourself)