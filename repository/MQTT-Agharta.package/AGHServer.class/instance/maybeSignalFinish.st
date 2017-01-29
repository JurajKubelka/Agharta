private
maybeSignalFinish
	self shouldFinish
		ifTrue: [ ConnectionClosed signal ]