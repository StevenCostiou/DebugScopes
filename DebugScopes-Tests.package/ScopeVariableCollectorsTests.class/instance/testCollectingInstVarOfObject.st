tests
testCollectingInstVarOfObject
	| scope observer observer2 |
	scope := InstanceVariableScope new.
	scope scope: DebugScope new.
	observer := VariableCollectorObserver new.
	observer2 := VariableCollectorObserver new.
	scope collectInstanceVariableNamed: #registeredValue forObject: observer.
	observer methodWithInstVar.
	observer2 methodWithInstVar.
	self assert: (scope collectedObjects anySatisfy: [ :e | e == observer registeredValue ]).
	self assert: (scope collectedObjects anySatisfy: [ :e | e == observer2 registeredValue ]) not.
	scope release