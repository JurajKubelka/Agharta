visiting
visitAGHMQTTChannelCreated: anAGHMQTTChannelCreated 
	stream 
		nextPutAll: '{"type":"ChannelCreated",';
		nextPutAll: '"channel":'.
	anAGHMQTTChannelCreated channel accept: self.
	stream nextPut: $}