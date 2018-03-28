collecting api
collectTemporaryObjectNamed: aVarName in: aMethodName forObject: anObject
	strategy := TempVarCollectionStrategy on: self forObject: anObject.
	strategy varName: aVarName.
	strategy varClass: anObject class.
	strategy methodName: aMethodName.
	strategy install