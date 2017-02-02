gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ composite fastTable
			title: 'Messages';
			display: [ collection ];
			column: 'Author' evaluated: [ :message | message author ];
			column: 'Text' evaluated: [ :message | message shortText ];
			column: 'Status' evaluated: [ :message | message status className ];
			beMultiple;
			yourself