tests
testActivationOnInstVarValue
	| obj1 obj2 scope |
	obj1 := AnObjectWithInstVar new.
	obj2 := AnObjectWithInstVar new.
	scope := ConditionalScope scopeToValue: 10 inInstVarNamed: #instVar forObject: obj1.
	scope scope: DebugScope new.
	self assert: scope isActive not.
	obj2 instVar: 10.
	self assert: scope isActive not.
	obj1 instVar: 10.
	self assert: scope isActive.
	obj1 instVar: 0.
	self assert: scope isActive not.
	scope release