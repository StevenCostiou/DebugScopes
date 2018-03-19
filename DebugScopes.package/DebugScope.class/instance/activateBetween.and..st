scoping - activation
activateBetween: anAst and: anOtherAst
	self addActivationScope: (ControlFlowScope from: anAst to: anOtherAst)