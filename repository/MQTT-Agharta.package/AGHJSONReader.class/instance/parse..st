parsing
parse: json
	^ self perform: (#parse, (json at: 'type'), ':') asSymbol with: json