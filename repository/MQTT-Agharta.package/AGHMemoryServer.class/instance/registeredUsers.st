accessing
registeredUsers
	^ registeredUsers ifNil: [ registeredUsers := AGHRegisteredUsers new ]