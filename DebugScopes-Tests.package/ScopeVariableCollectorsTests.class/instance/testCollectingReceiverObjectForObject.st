tests
testCollectingReceiverObjectForObject
	| node scope observer observer2 |
	node := (VariableCollectorObserver >> #methodWithUnnamedTempVar) ast body statements first
		value messages first.
	scope := VariableScope new.
	observer := VariableCollectorObserver new.
	observer2 := VariableCollectorObserver new.
	observer scope: scope.
	observer2 scope: scope.
	scope collectReceiverObject: node forObject: observer.
	observer methodWithUnnamedTempVar.
	observer2 methodWithUnnamedTempVar.
	self assert: scope collectedObjects size equals: 1.
	self assert: observer registeredValue == scope collectedObjects first.
	scope release