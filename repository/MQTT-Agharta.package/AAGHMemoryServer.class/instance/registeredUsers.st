public
registeredUsers
	^ registeredUsers ifNil: [ registeredUsers := AAGHRegisteredUsers new ]