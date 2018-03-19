tests
testScopedAdaptation
	| adaptedObject collector adaptSpec control selector |
	adaptedObject := DebugScopeObject new.
	scope collectAll: (Array with: adaptedObject).

	"Specifying the adaptation"
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	selector := adaptSpec compileSource: (DebugScopeTest >> #tagExec) ast source.
	control := AdaptationControlSpec new.
	control controllingSelector: selector.
	control controllingMethod: DebugScopeTest >> #tagExec.
	control controlledMethod: DebugScopeObject >> #method.
	control controlledArguments: #().
	control control: #before.
	adaptSpec addControlledBehavior: control forBehavior: selector.
	scope activate.

	"Testing"
	self assert: adaptedObject tag isNil.
	self assert: adaptedObject method equals: 0.
	self assert: adaptedObject tag equals: 'exec'