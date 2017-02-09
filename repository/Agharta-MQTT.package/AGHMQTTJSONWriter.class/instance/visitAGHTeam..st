visiting
visitAGHTeam: anAGHTeam 
	stream 
		nextPutAll: '{"type":"Team",';
		nextPutAll: '"id":"';
		nextPutAll: anAGHTeam id asString;
		nextPutAll: '"}'