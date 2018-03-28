scoping - activation
activateBetween: anAst and: anOtherAst
	self addActivator: (ControlFlowScope from: anAst to: anOtherAst)