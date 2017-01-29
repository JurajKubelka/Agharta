running
tearDown
	client ifNotNil: #close.
	server ifNotNil: #close.
	super tearDown.