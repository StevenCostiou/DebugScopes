scoping - collectors
collectReceiverObject: node forObject: anObject
	self addCollector: (Collector collectReceiver: node forObject: anObject)