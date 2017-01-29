converting
asString
	^ (String streamContents: [ :stream | self writeOn: stream ])