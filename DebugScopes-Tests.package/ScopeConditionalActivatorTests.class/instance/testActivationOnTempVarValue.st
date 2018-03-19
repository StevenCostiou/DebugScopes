tests
testActivationOnTempVarValue
	| obj1 obj2 scope |
	obj1 := AnObjectWithInstVar new.
	obj2 := AnObjectWithInstVar new.
	scope := ConditionalScope
		scopeToValue: 10
		inTempNamed: #var
		inMethodNamed: #aMethodWithTempVar
		forObject: obj1.
	scope scope: DebugScope new.
	self assert: scope isActive not.
	obj2 aMethodWithTempVar.
	self assert: scope isActive not.
	obj1 aMethodWithTempVar.
	self assert: scope isActive.
	scope release