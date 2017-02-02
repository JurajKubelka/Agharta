actions
registerAnnouncement: announcement on: block
	self aghartasDo: [ :agharta | 
		(block value: agharta)
			when: announcement do: [ :ann | results add: ann. semaphore signal ] ]