gt-inspector-extension
gtInspectorChannelsIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Messages';
			display: [ collection ];
			column: 'Sender' evaluated: [ :message | message sender ];
			column: 'Text' evaluated: [ :message | message shortText ];
			column: 'Status' evaluated: [ :message | message status className ];
			beMultiple;
			yourself