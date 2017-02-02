gt-inspector-extension
gtInspectorTeamsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Teams';
			display: [ collection ];
			column: 'Id' evaluated: [ :team | team id ];
			column: 'Status' evaluated: [ :team | team status name ];
			column: '#Channels' 
				evaluated: [ :team | team channels size ] 
				sortedBy: [ :a :b | a channels size > b channels size ];
			beMultiple;
			yourself