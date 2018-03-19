tests
testScopedAdaptationWithArgs
	| adaptedObject collector adaptSpec control selector controlledMethod array |
	adaptedObject := DebugScopeObject new.
	scope collectAll: (Array with: adaptedObject).

	"Specifying the adaptation"
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	selector := adaptSpec compileSource: (DebugScopeTest >> #with:with:with:) ast source.
	control := AdaptationControlSpec new.
	control controllingSelector: selector.
	control controllingMethod: DebugScopeTest >> #with:with:with:.
	controlledMethod := DebugScopeObject >> #methodWith:with:with:.
	control controlledMethod: controlledMethod.
	control
		controlledArguments:
			(Dictionary new
				at: 1 put: controlledMethod ast arguments last;
				at: 2 put: controlledMethod ast arguments second;
				at: 3 put: controlledMethod ast arguments first;
				yourself).
	control control: #before.
	adaptSpec addControlledBehavior: control forBehavior: selector.
	
	scope activate.

	"Testing"
	self assert: adaptedObject tag isNil.
	array := adaptedObject methodWith: 1 with: 2 with: 3.
	self assert: adaptedObject tag size equals: array size.
	self assert: array first == adaptedObject tag last.
	self assert: array second == adaptedObject tag second.
	self assert: array last == adaptedObject tag first