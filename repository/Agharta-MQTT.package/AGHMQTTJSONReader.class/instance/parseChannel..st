parsing - old (check)
parseChannel: json 
	^ AAGHChannelModel new
		id: (json at: 'id');
		yourself