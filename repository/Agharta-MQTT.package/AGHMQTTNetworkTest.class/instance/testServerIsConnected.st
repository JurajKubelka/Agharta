tests
testServerIsConnected
	self setUpServer.
	self assert: server isConnected description: 'Server should be connected to ', self host.