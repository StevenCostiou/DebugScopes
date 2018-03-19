tests
testCollectingReceiverObject
	| node scope observer |
	node := (VariableCollectorObserver >> #methodWithUnnamedTempVar) ast body statements first
		value messages first.
	scope := VariableScope new.
	observer := VariableCollectorObserver new.
	observer scope: scope.
	scope collectReceiverObject: node.
	observer methodWithUnnamedTempVar.
	self assert: observer registeredValue == scope collectedObjects first.
	scope release