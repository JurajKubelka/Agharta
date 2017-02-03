network handling
cannotSendMessage: anAGHMessage 
	self messages 
		find: anAGHMessage 
		do: [ :message | 
			message beNotSent.
			self announce: (AGHCannotSendMessage new message: message; yourself) ]