running
setUp
	super setUp.
	client 
		host: self host;
		prefix: self prefix;
		clientId: 'Client-', 999 atRandom asString.
	server := AGHMemoryServer new.
	server 
		host: self host;
		prefix: self prefix;
		clientId: 'Server-', 999 atRandom asString.
	client open.
	server open.