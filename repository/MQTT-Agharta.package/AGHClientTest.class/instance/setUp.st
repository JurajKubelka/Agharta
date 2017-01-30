running
setUp
	super setUp.
	self setUpServer.
	client := AGHClient new.
	client 
		host: self host;
		prefix: self prefix;
		clientId: 'Client-', 999 atRandom asString.
	client open.