gt-inspector-extension
gtInspectorTeamsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Teams';
			display: [ collection ];
			column: 'Id' evaluated: [ :team | team id ];
			column: 'Status' evaluated: [ :team | team status className ];
			beMultiple;
			yourself