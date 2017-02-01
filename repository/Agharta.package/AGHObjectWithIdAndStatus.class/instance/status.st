accessing
status
	^ status ifNil: [ status := AGHUndefined default ]