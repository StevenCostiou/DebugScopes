scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue
	self addActivationScope: (ConditionalScope scopeToValue: aValue inInstVarNamed: aVarName forObject: anObject)