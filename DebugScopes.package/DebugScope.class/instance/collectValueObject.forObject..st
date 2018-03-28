scoping - collectors
collectValueObject: node forObject: anObject
	self addCollector: (Collector collectValue: node forObject: anObject)