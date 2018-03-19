actions
collectReceiverInContext: aClySugsMethodContext forScope: aScope
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	node isMessage
		ifFalse: [ ^ self inform: 'Selection does not refer to a message' ].
	aScope collectReceiverObject: node