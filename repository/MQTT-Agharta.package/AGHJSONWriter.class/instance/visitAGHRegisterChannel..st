visiting
visitAGHRegisterChannel: anAGHRegisterChannel
	stream 
		nextPutAll: '{"type": "RegisterChannel",';
		nextPutAll: '"answerTopic": "';
		nextPutAll: anAGHRegisterChannel answerTopic asString;
		nextPutAll: '", "channel": '.
	anAGHRegisterChannel channel accept: self.
	stream nextPutAll: '}'