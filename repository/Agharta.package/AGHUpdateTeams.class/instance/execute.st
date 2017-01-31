execute
execute
	self received do: [ :eachTeam |
		(self teams includes: eachTeam) ifFalse: [ self teams add: eachTeam ] ]