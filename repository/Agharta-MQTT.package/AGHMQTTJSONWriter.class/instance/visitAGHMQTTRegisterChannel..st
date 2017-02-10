visiting
visitAGHMQTTRegisterChannel: anAGHMQTTRegisterChannel 
	stream 
		nextPutAll: '{"type":"RegisterChannel",';
		nextPutAll: '"answerTopic":"';
		nextPutAll: anAGHMQTTRegisterChannel answerTopic asString;
		nextPutAll: '","channel":'.
	anAGHMQTTRegisterChannel channel accept: self.
	stream nextPutAll: '}'