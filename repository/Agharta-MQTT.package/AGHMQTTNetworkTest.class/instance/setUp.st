running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	self setUpClientOne.