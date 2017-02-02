adding
add: newItem 
	"Returns previous instance if it finds that it already exists."
	^ collection 
		detect: [ :eachItem | eachItem = newItem ]
		ifFound: [ :item | item ]
		ifNone: [ 
			self updateReferences: newItem.
			collection add: newItem ]