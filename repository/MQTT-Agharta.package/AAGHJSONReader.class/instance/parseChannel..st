parsing
parseChannel: json 
	^ AAGHChannelModel new
		id: (json at: 'id');
		yourself