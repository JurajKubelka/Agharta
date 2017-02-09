logging-Deprecated
log: anObject
	mqttClient 
		ifNil: [ self crLog: anObject ]
		ifNotNil: [ mqttClient log: anObject ]