tests
testLayerObjectsCollection
	| scope objects |
	scope := DebugScope define: 'TestLayer'.
	objects := OrderedCollection new.
	10
		timesRepeat: [ objects add: Time now].
	scope collectAll: objects.
	1 to: 10 do: [ :i | self assert: (scope collectedObjects at: i) == (objects at: i) ].
	scope release