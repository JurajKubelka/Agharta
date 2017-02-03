accessing
messages
	^ messages ifNil: [ messages := AGHMessages new channel: self; yourself ]