public
registerTeam: newTeam 
	| team |
	team := self teams add: newTeam copy.
	team beRegistered.
	aghartas do: [ :each | each teamRegistered: team copy ].