adding
add: newItem 
	"Returns previous instance if it finds that it already exists."
	^ collection 
		detect: [ :eachItem | eachItem = newItem ]
		ifFound: [ :item | item ]
		ifNone: [ collection add: newItem ]