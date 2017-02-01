gt-inspector-extension
gtInspectorChannelsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Channels';
			display: [ collection ];
			column: 'Id' evaluated: [ :channel | channel id ];
			column: 'Status' evaluated: [ :channel | channel status className ];
			beMultiple;
			yourself