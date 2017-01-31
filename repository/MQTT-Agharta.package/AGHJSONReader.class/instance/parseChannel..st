parsing
parseChannel: json 
	^ AGHChannelModel new
		id: (json at: 'id');
		yourself