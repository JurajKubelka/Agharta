running
setUpClientOne
	aghartaClientOne := Agharta new.
	aghartaClientOne username: self usernameOne.
	clientOne := AGHMQTTClient new.
	clientOne
		host: self host;
		prefix: self prefix;
		clientId: self clientOneId;
		timeout: self timeout.
	aghartaClientOne network: clientOne.
	aghartaClientOne open.