parsing - old (check)
parseRegisteredUsers: json 
	| users |
	users := (json at: 'users') collect: [ :eachUser |
		self perform: (#parse, (eachUser at: 'type'), ':') asSymbol with: eachUser ].
	^ AAGHRegisteredUsers new
		collection: users;
		yourself