gt-inspector-extension
gtInspectorChannelsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Channels';
			display: [ collection ];
			column: 'Id' evaluated: [ :channel | channel id ];
			column: 'Status' evaluated: [ :channel | channel status name ];
			column: '#Messages' 
				evaluated: [ :channel | channel messages size ] 
				sortedBy: [ :a :b | a messages size > b messages size ];
			beMultiple;
			yourself