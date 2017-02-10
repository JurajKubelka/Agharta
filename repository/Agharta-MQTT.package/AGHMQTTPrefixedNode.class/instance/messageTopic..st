configuration
messageTopic: anAGHChannel
	"MQTT Topic where channel messages are sent"
	^ self prefix, '/', anAGHChannel team id asString, '/', anAGHChannel id asString, '/chat'