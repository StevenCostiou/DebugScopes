accessing
argsArray
	| argsSize collection |
	argsSize := controllingMethod ast arguments size.
	argsSize = 0 ifTrue:[^#()].
	collection := controlledArguments keys asSortedCollection
		collect: [ :i | controlledArguments at: i ].
	argsSize - collection size timesRepeat: [ collection add: #object ].
	^ collection