tests
testCollectingInstVarOfClass
	| scope observer observer2 |
	scope := InstanceVariableScope new.
	scope scope: DebugScope new.
	observer := VariableCollectorObserver new.
	observer2 := VariableCollectorObserver new.
	scope collectInstanceVariableNamed: #registeredValue fromClass: VariableCollectorObserver.
	observer methodWithInstVar.
	observer2 methodWithInstVar.
	self assert: (scope collectedObjects anySatisfy: [:e| e == observer registeredValue]).
	self assert: (scope collectedObjects anySatisfy: [:e| e == observer2 registeredValue]).
	scope release