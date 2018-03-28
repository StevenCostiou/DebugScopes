collecting api
collectReceiver: node forObject: anObject
	strategy := ReceiverCollectionStrategy on: self forObject: anObject.
	strategy node: node.
	strategy install