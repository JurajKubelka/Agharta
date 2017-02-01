network requests
updateChannels: aCollection 
	AGHUpdateTeams new
		teams: self channels;
		received: aCollection;
		execute.
	self announce: (AGHUpdatedChannels new channels: self channels; yourself)