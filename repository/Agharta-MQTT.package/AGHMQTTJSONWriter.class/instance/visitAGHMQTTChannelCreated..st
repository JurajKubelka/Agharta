visiting
visitAGHMQTTChannelCreated: anAGHMQTTChannelCreated 
	self 
		openObject;
		type: 'ChannelCreated';
		coma;
		key: 'channel' object: anAGHMQTTChannelCreated channel;
		closeObject