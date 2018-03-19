actions
collectTemporaryInContext: aClySugsMethodContext forScope: aScope
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	(node isVariable and: [ node isTemp ])
		ifFalse: [ ^ self inform: 'Selection does not refer to a temporary variable' ].
	aScope collectTemporaryObjectNamed: node name in: node methodNode selector from: node methodNode methodClass