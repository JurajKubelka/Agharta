parsing
parseRegisteredUsers: json 
	| users |
	users := (json at: 'users') collect: [ :eachUser |
		self perform: (#parse, (eachUser at: 'type'), ':') asSymbol with: eachUser ].
	^ AGHRegisteredUsers new
		collection: users;
		yourself