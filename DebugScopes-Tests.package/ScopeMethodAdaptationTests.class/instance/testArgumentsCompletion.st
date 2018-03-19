tests
testArgumentsCompletion
	| collector adaptSpec control |
	scope collectAll: (Array with: Time now).
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	control := AdaptationControlSpec new.
	control controllingMethod: DebugScopeTest >> #with:with:with:.
	control
		controlledArguments:
			(Dictionary new
				at: 1 put: 1;
				at: 2 put: 2;
				yourself).
	adaptSpec addControlledBehavior: control forBehavior: #with:with:with:.
	self
		assert: control argsArray size
		equals: (DebugScopeTest >> #with:with:with:) ast arguments size