accessing
prefix
	^ prefix ifNil: [ prefix := 'tests-', UUID new asString ]