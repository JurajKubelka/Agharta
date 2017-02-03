enumerating
find: object do: foundBlock
	^ self 
		detect: [ :item | item = object ] 
		ifFound: foundBlock 
		ifNone: [ "do nothing" ]