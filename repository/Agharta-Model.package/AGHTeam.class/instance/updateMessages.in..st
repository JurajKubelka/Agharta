network handling
updateMessages: aCollection in: anAGHChannel 
	self channels
		find: anAGHChannel 
		do: [ :channel | channel updateMessages: aCollection ].