accessing
delivery
	^ delivery ifNil: [ delivery := AGHMQTTClientDelivery new network: self; yourself ]