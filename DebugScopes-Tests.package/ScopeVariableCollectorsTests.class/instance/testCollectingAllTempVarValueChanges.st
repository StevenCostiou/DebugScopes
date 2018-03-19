tests
testCollectingAllTempVarValueChanges
	"This test ensures that each time a new temp is created it is collected. All temps are stored so as never garbaged they still exist in the collection of the scope"

	| scope observer |
	scope := VariableScope new.
	scope scope: DebugScope new.
	observer := VariableCollectorObserver new.
	observer scope: scope.
	scope collectTemporaryObjectNamed: #temp in: #methodWithRegisteredChangingTempVar from: VariableCollectorObserver.
	observer methodWithRegisteredChangingTempVar.
	1 to: observer registeredValue size do: [ :i | self assert: (observer registeredValue at: i) == (scope collectedObjects at: i) ].
	scope release