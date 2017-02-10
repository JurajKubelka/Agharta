network handling
cannotRegisterTeam: anAGHTeam 
	self log: 'Cannot register team with id "', anAGHTeam id, '"'.
	self agharta cannotRegisterTeam: anAGHTeam