accessing
prefix
	^ prefix ifNil: [ prefix := 'tests-', self identityHash asString, '-', UUID new asString ]