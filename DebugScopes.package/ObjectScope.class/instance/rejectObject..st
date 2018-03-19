collecting objects
rejectObject: anObject
	self scope ifNotNil:[self scope rejectObject: anObject from: self].
	self collectedObjects remove: anObject ifAbsent: [  ]