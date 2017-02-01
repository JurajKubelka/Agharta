accessing
channels
	^ channels ifNil: [ channels := AGHChannels new ]