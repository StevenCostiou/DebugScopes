tests
testRemovingCollector
	| scope objects collector adaptSpec control |
	scope := DebugScope define: 'TestLayer'.
	objects := OrderedCollection new.
	10 timesRepeat: [ objects add: Time now ].
	scope collectAll: objects.

	"Specifying the adaptation"
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	adaptSpec definingClass: DebugScopeAdaptationTest.
	control := AdaptationControlSpec new.
	control controllingSelector: #hasBeenAdapted.
	control controllingMethod: DebugScopeAdaptationTest >> #hasBeenAdapted.
	control controlledArguments: #().
	control control: #acquire.
	adaptSpec addControlledBehavior: control forBehavior: #hasBeenAdapted.

	"Test"
	scope activate.
	scope removeObjectScope: collector.
	self assert: scope collectedObjects isEmpty.
	self assert: (objects allSatisfy: [ :o | o isAdapted not ]).
	scope release