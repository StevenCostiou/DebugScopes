instance creation
on: aCollector forObject: anObject
	| strategy |
	strategy := self on: aCollector.
	strategy weakObject: anObject.
	strategy forObject.
	^ strategy