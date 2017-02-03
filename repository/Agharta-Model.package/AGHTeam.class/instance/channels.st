accessing
channels
	^ channels ifNil: [ channels := AGHChannels new 
			agharta: self agharta; 
			team: self;
			yourself ]