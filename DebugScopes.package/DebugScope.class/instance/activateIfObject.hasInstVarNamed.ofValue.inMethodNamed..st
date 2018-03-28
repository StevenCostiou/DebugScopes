scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue inMethodNamed: aMethodName
	self
		addActivator:
			(ConditionalScope
				scopeToValue: aValue
				inTempNamed: aVarName
				inMethodNamed: aMethodName
				forObject: anObject)