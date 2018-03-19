printing
printArguments
	| ws |
	controlledArguments isEmpty ifTrue:[^''].
	ws := String new writeStream.
	controlledArguments keys asSortedCollection
		do: [ :k | 
			ws space.
			ws nextPutAll: (controlledArguments at: k) asString.
			ws nextPut: $, ].
	ws contents last = $,
		ifTrue: [ ^ ws contents copyFrom: 1 to: ws contents size - 1 ].
	^ ws contents