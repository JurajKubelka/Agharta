running
setUpClient
	aghartaClient := Agharta new.
	aghartaClient username: self username.
	client := AGHMQTTClient new.
	client
		host: self host;
		prefix: self prefix;
		clientId: self clientId;
		timeout: self timeout.
	aghartaClient network: client.
	aghartaClient open.