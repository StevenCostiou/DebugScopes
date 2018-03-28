scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue
	self addActivator: (ConditionalScope scopeToValue: aValue inInstVarNamed: aVarName forObject: anObject)