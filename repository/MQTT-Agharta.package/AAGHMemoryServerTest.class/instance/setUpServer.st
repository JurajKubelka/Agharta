running
setUpServer
	server := AAGHMemoryServer new.
	server 
		host: self host;
		prefix: self prefix;
		clientId: 'Server-', 999 atRandom asString.
	server open