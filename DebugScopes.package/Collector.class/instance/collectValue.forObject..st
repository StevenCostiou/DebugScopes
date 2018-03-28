collecting api
collectValue: node forObject: anObject
	strategy := ValueCollectionStrategy on: self forObject: anObject.
	strategy node: node.
	strategy install