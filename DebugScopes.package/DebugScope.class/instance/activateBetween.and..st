scoping - activation
activateBetween: anAst and: anOtherAst
	self addActivator: (ControlFlowActivator from: anAst to: anOtherAst)