collecting api
collectTemporaryObjectNamed: aVarName in: aMethodName from: aClass
	strategy := TempVarCollectionStrategy on: self.
	strategy varName: aVarName.
	strategy varClass: aClass.
	strategy methodName: aMethodName.
	strategy install