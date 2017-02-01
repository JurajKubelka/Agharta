execute
execute
	self received do: [ :eachTeam |
		(self teams add: eachTeam) beRegistered ]