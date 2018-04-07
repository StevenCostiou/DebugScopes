scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue inMethodNamed: aMethodName
	self
		addActivator:
			(ConditionalActivator
				scopeToValue: aValue
				inTempNamed: aVarName
				inMethodNamed: aMethodName
				forObject: anObject)