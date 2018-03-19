tests
testConditionalScopingActivation
	| layer obj1 obj2 |
	layer := DebugScope new.
	obj1 := AnObjectWithInstVar new.
	obj2 := AnObjectWithInstVar new.
	self assert: layer isActive not.
	layer activateIfObject: obj1 hasInstVarNamed: #instVar ofValue: 10.
	self assert: layer isActive not.
	obj2 instVar: 10.
	self assert: layer isActive not.
	obj1 instVar: 10.
	self assert: layer isActive.
	obj1 instVar: 0.
	self assert: layer isActive not.
	layer release.
	layer deactivate.
	obj1 instVar: 10.
	self assert: layer isActive not