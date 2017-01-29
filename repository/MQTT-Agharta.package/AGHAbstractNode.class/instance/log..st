logging-Deprecated
log: anObject
	mqttClient 
		ifNil: [ super crLog: anObject ]
		ifNotNil: [ mqttClient log: anObject ]