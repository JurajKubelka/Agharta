initialization
setUp
	super setUp.
	collection := AGHChannels new.
	itemOne := AGHChannel new id: 'channel one'.
	itemOneCopy := AGHChannel new id: 'channel one'.
	itemTwo := AGHChannel new id: 'channel two'.