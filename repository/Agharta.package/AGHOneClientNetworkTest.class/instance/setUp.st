running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	agharta := Agharta new.
	agharta id: self aghartaId.
	self setRespondingLocalNetwork.	