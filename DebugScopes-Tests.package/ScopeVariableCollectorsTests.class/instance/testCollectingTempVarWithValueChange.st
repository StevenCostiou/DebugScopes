tests
testCollectingTempVarWithValueChange
	"This test ensures that each time a new temp is created it is collected. All temps are stored so as never garbaged they still exist in the collection of the scope"

	| scope observer collected |
	scope := VariableScope new.
	scope scope: DebugScope new.
	observer := VariableCollectorObserver new.
	observer scope: scope.
	scope collectTemporaryObjectNamed: #temp in: #methodWithChangingTempVar from: VariableCollectorObserver.
	observer methodWithChangingTempVar.
	Smalltalk garbageCollectMost.
	collected := scope collectedObjects select: [ :o | o notNil ].
	self assert: collected size equals: 1.
	self assert: collected first == observer registeredValue.
	scope release