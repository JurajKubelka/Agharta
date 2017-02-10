running
tearDown
	clientOne ifNotNil: #close.
	super tearDown.