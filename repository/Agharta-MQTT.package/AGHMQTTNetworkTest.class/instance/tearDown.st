running
tearDown
	client ifNotNil: #close.
	super tearDown.