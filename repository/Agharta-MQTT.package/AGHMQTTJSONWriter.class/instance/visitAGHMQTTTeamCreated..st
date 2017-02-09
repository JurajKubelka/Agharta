visiting
visitAGHMQTTTeamCreated: anAGHTeamCreated 
	stream 
		nextPutAll: '{"type": "TeamCreated",';
		nextPutAll: '"id": "';
		nextPutAll: anAGHTeamCreated id asString;
		nextPutAll: '"}'