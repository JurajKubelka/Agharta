initialize-release
close
	finish := true.
	^ mqttClient ifNotNil: #close