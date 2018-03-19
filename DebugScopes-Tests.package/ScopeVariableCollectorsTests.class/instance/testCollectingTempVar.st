tests
testCollectingTempVar
	| scope observer |
	scope := VariableScope new.
	observer := VariableCollectorObserver new.
	observer scope: scope.
	scope collectTemporaryObjectNamed: #temp in: #methodWithTempVar from: VariableCollectorObserver.
	observer methodWithTempVar.
	self assert: scope collectedObjects size equals: 1.
	self assert: scope collectedObjects first == observer registeredValue.
	scope release