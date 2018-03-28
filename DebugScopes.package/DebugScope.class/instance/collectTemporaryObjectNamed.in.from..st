scoping - collectors
collectTemporaryObjectNamed: aVarName in: aMethodName from: aClass
	self addCollector: (Collector collectTempVarNamed: aVarName inMethodNamed: aMethodName inClass: aClass)