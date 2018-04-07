tests
testActivationOnCondition
	| obj scope |
	obj := AnObjectWithInstVar new.
	scope := ConditionalActivator
		scopeToCondition: [ :object :class | obj class == class and: [ object == obj ] ]
		afterNode: (AnObjectWithInstVar >> #aMethodWithTempVar) ast statements first.
	scope scope: DebugScope new.
	self assert: scope isActive not.
	obj aMethodWithTempVar.
	self assert: scope isActive.
	scope release