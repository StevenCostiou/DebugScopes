scoping - collectors
collectReceiverObject: node
	self addCollector: (Collector collectReceiver: node)