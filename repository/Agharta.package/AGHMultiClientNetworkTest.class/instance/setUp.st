running
setUp
	super setUp.
	network := AGHMultiClientNetwork new.
	results := OrderedCollection new.
	semaphore := Semaphore new.
