instance creation
scopeToValue: aValue inTempNamed: aVarName inMethodNamed: aMethodName forObject: anObject
	^ self new
		scopeToValue: aValue
		inTempNamed: aVarName
		inMethodNamed: aMethodName
		forObject: anObject