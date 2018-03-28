collecting objects
performAction: aBlock for: anObject
	aBlock ifNil:[^self].
	aBlock value: anObject value: self