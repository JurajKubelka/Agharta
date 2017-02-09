visiting
visitAGHMQTTRegisterTeam: anAGHMQTTRegisterTeam 
	stream
		nextPutAll: '{"type":"RegisterTeam",';
		nextPutAll: '"answerTopic":"';
		nextPutAll: anAGHMQTTRegisterTeam answerTopic asString;
		nextPutAll: '","team":'.
	anAGHMQTTRegisterTeam team accept: self.
	stream nextPutAll: '}'