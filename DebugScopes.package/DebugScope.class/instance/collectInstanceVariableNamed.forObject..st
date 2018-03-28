scoping - collectors
collectInstanceVariableNamed: instVarName forObject: anObject
	self addCollector: (Collector collectInstVarNamed: instVarName forObject: anObject)