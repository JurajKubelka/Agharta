actions
registerAnnouncement: announcement 
	self aghartasDo: [ :agharta | 
		agharta when: announcement do: [ :ann | results add: ann. semaphore signal ] ]
