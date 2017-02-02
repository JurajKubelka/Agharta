running
setUp
	super setUp.
	collection := AGHMessages new.
	collection agharta: agharta.
	channel := AGHChannel new.
	collection channel: channel.
	itemOne := AGHMessage new id: self timestampOne.
	itemOneCopy := AGHMessage new id: self timestampOne.
	itemTwo := AGHMessage new id: self timestampTwo.