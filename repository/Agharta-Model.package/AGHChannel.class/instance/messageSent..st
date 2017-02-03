network handling
messageSent: anAGHMessage 
	self messages 
		find: anAGHMessage 
		do: [ :message | 
			message beSent.
			self announce: (AGHSentMessage new message: anAGHMessage) ]