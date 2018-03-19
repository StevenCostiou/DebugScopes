tests
testAdaptationOfCollectedObjects
	| scope objects collector adaptSpec selector control |
	scope := DebugScope define: 'TestLayer'.
	objects := OrderedCollection new.
	10 timesRepeat: [ objects add: Time now ].	
	scope collectAll: objects.
	
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	selector := adaptSpec compileSource: (DebugScopeAdaptationTest >> #hasBeenAdapted) ast source.
	control := AdaptationControlSpec new.
	control controllingSelector: selector.
	control controllingMethod: DebugScopeAdaptationTest >> #hasBeenAdapted.
	control control: #acquire.
	adaptSpec addControlledBehavior: control forBehavior: selector.
	
	scope activate.	
	self assert: (scope collectedObjects allSatisfy: [ :o | o hasBeenAdapted ]).
	self assert: (scope collectedObjects allSatisfy: [ :o | o isAdapted ]).
	scope deactivate.
	scope collectedObjects do: [ :o | self should: [ o hasBeenAdapted ] raise: MessageNotUnderstood ].
	self assert: (scope collectedObjects allSatisfy: [ :o | o isAdapted not ]).
	scope release