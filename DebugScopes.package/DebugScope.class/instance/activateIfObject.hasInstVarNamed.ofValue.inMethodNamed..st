scoping - activation
activateIfObject: anObject hasInstVarNamed: aVarName ofValue: aValue inMethodNamed: aMethodName
	self
		addActivationScope:
			(ConditionalScope
				scopeToValue: aValue
				inTempNamed: aVarName
				inMethodNamed: aMethodName
				forObject: anObject)