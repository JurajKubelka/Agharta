testing
isConnected
	^ self isClientConnected and: [ self isServerConnected ]