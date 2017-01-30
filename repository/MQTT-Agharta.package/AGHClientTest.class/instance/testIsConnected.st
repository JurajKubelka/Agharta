tests
testIsConnected
	self assert: self isClientConnected description: 'Client should be connected to ', self host.
	self assert: self isServerConnected description: 'Server should be connected to ', self host.