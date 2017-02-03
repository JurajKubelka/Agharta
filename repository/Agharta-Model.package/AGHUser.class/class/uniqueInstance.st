accessing
uniqueInstance
	^ uniqueInstance ifNil: [ uniqueInstance := self new username: (Author fullName) ]