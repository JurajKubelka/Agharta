running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	agharta := Agharta new.
	agharta username: self username.
	network := AMQTTNetwork new.
	network
		host: self host;
		prefix: self prefix;
		clientId: self clientId;
		timeout: self timeout.
	agharta network: network.
	agharta open.