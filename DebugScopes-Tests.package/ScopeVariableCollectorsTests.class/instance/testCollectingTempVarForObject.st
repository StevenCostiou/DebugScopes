tests
testCollectingTempVarForObject
	| scope observer1 observer2 |
	scope := VariableScope new.
	observer1 := VariableCollectorObserver new.
	observer2 := VariableCollectorObserver new.
	observer1 scope: scope.
	observer2 scope: scope.
	scope collectTemporaryObjectNamed: #temp in: #methodWithTempVar forObject: observer1.
	observer1 methodWithTempVar.
	observer2 methodWithTempVar.
	self assert: scope collectedObjects size equals: 1.
	self assert: observer1 registeredValue == scope collectedObjects first.
	scope release