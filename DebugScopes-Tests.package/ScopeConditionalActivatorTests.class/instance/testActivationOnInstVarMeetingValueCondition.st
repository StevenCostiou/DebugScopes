tests
testActivationOnInstVarMeetingValueCondition
	| obj1 scope |
	obj1 := AnObjectWithInstVar new.
	obj1 instVar: 10.
	scope := ConditionalScope new.
	scope scope: DebugScope new.
	scope scopeToValue: 10 inInstVarNamed: #instVar forObject: obj1.
	self assert: scope isActive.
	scope release