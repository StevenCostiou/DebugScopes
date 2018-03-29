actions
collectResultInContext: aClySugsMethodContext forScope: aScope
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	node := nodes first == nodes last
		ifTrue: [ nodes first ]
		ifFalse: [ nodes first parent == nodes last parent
				ifTrue: [ nodes first parent ]
				ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ] ].
	node isMessage
		ifFalse: [ ^ self inform: 'Selection does not refer to a message' ].
	aScope collectValueObject: node