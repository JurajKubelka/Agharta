instance creation
text: aString 
	^ self new 
		contents: (AGHText new text: aString; yourself);
		yourself