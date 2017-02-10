visiting
visitAGHMQTTTeamCreated: anAGHTeamCreated 
	stream 
		nextPutAll: '{"type": "TeamCreated",';
		nextPutAll: '"team":'.
	anAGHTeamCreated team accept: self.
	stream nextPut: $}