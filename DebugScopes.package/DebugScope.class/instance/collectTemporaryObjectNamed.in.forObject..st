scoping - collectors
collectTemporaryObjectNamed: aVarName in: aMethodName forObject: anObject
	self addCollector: (Collector collectTempVarNamed: aVarName inMethodNamed: aMethodName forObject: anObject)