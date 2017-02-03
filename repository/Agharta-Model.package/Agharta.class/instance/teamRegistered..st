network handling
teamRegistered: registeredTeam
	| localTeam |
	localTeam := self teams add: registeredTeam.
	(self
		skipRegisteredTeamAnnouncement: localTeam
		comparingTo: registeredTeam)
		ifTrue: [ ^ self ].
	localTeam beRegistered.
	self announce: (AGHRegisteredTeam new team: localTeam)