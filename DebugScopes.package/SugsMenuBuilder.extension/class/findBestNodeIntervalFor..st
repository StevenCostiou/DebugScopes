*DebugScopes
findBestNodeIntervalFor: context
	| root startNode stopNode |
	context hasUnacceptedEdits
		ifTrue: [ ^ nil ].
	root := context selectedMethod ast.
	startNode := root
		bestNodeFor: (context selectedInterval first to: context selectedInterval second).
	stopNode := root
		bestNodeFor:
			((context selectedInterval at: context selectedInterval size - 1) to: context selectedInterval last).
	^ Array with: startNode with: stopNode