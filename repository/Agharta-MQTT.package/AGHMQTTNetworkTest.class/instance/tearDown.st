running
tearDown
	clientOne ifNotNil: #close.
	clientTwo ifNotNil: #close.
	server ifNotNil: #close.
	super tearDown.