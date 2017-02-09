running
setUpServer
	aghartaServer := AghartaServer new.
	server := AGHMQTTServer new.
	server
		host: self host;
		prefix: self prefix;
		clientId: self serverId;
		timeout: self timeout.
	aghartaServer network: server.
	aghartaServer open.