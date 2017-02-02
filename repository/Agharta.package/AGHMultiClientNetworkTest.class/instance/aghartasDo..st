enumerating
aghartasDo: aBlockClosure 
	aghartaOne ifNotNil: [ aBlockClosure value: aghartaOne ].
	aghartaTwo ifNotNil: [ aBlockClosure value: aghartaTwo ].
	aghartaThree ifNotNil: [ aBlockClosure value: aghartaThree ].
	