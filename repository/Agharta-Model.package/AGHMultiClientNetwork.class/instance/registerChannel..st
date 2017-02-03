public
registerChannel: newChannel 
	| team channel |
	team := self teams add: newChannel team copy.
	channel := team channels add: newChannel copy.
	channel beRegistered.
	aghartas do: [ :each | each channelRegistered: channel copy ].