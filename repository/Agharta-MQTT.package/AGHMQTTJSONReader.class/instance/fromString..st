instance creation
fromString: aString 
	| json |
	json := STONJSON fromString: aString.
	^ self perform: (#parse, (json at: 'type'), ':') asSymbol with: json