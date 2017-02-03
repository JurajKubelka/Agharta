public
sendMessage: newMessage 
	| team channel message |
	team := self teams add: newMessage team copy.
	channel := team channels add: newMessage channel copy.
	message := channel messages add: newMessage copy.
	aghartas do: [ :agharta | 
		newMessage channel agharta == agharta 
			ifTrue: [ agharta messageSent: message copy ]
			ifFalse: [ agharta messageReceived: message copy ] ].