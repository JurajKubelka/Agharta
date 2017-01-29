public - users
registeredUsers
	^ registeredUsers ifNil: [ registeredUsers := AGHRegisteredUsers new ]