convenience
toString: anObject 
	^ String streamContents: [ :aStream |
		stream := aStream.
		anObject accept: self ]