visiting
visitAGHRegisteredUsers: anAGHRegisteredUsers 
	stream nextPutAll: '{"type":"RegisteredUsers", "users": ['.
	anAGHRegisteredUsers collection do: [ :eachUser |
		eachUser accept: self ].
	stream nextPutAll: ']}'.
