actions
collectInstVarInContext: aClySugsMethodContext forScope: aScope
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	(node isVariable and: [ node isTemp not ])
		ifFalse: [ ^ self inform: 'Selection does not refer to an instance variable' ].
	aScope collectInstanceVariableNamed: node name fromClass: node methodNode methodClass