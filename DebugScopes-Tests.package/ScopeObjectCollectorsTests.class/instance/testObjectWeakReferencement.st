tests
testObjectWeakReferencement
	| scope time |
	scope := ObjectScope new.
	time := Time now.
	scope collectAll: (Array with: time).
	time := nil.
	Smalltalk garbageCollect.
	self assert: (scope collectedObjects select: [ :o | o notNil ]) isEmpty.
	scope release