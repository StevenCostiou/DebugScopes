scoping
notifyObjectCollection: anObject in: collector
	self isActive
		ifFalse: [ ^ self ].
	(self adaptationForCollector: collector) adaptObject: anObject