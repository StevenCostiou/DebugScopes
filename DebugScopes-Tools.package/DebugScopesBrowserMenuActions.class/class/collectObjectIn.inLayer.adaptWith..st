actions
collectObjectIn: aClySugsMethodContext inLayer: aDynamicLayer adaptWith: anAdaptation
	| nodes node |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aClySugsMethodContext.
	nodes first == nodes last
		ifFalse: [ ^ self inform: 'Unable to find the object: selection may be too large' ].
	node := nodes first.
	(node isVariable or: [ node isMessage ])
		ifFalse: [ ^ self inform: 'Selection does not refer to a variable' ].
	node isVariable
		ifTrue: [ aDynamicLayer collectVariableObject: node toBeAdaptedWith: anAdaptation ].
	node isMessage
		ifTrue: [ aDynamicLayer collectReceiverObject: node toBeAdaptedWith: anAdaptation ]