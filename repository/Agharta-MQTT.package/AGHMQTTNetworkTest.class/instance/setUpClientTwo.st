running
setUpClientTwo
	aghartaClientTwo := Agharta new.
	aghartaClientTwo username: self usernameTwo.
	clientTwo := AGHMQTTClient new.
	clientTwo
		host: self host;
		prefix: self prefix;
		clientId: self clientTwoId;
		timeout: self timeout.
	aghartaClientTwo network: clientTwo.
	aghartaClientTwo open.