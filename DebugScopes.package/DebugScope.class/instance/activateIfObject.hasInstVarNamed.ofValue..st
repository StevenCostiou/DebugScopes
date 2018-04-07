scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue
	self addActivator: (ConditionalActivator scopeToValue: aValue inInstVarNamed: aVarName forObject: anObject)