network handing
updateChannels: aCollection in: anAGHTeam 
	self teams 
		detect: [ :team | team = anAGHTeam ] 
		ifFound: [ :team | team updateChannels: aCollection ] 
		ifNone: [ "ignore request" ]