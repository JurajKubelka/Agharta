accessing
user
	^ user ifNil: [ user := AGHUser default ]