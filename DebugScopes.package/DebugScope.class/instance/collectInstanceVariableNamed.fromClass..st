scoping - collectors
collectInstanceVariableNamed: instVarName fromClass: aClass
	self addCollector: (Collector collectInstVarNamed: instVarName inClass: aClass)