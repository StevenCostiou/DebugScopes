collect - api
collectTempVarNamed: varName inMethodNamed: methodName inClass: aClass
	^ self new collectTemporaryObjectNamed: varName in: methodName from: aClass