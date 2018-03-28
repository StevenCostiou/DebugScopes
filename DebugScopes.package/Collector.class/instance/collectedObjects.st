accessing
collectedObjects
	^ collectedObjects ifNil: [ collectedObjects := WeakOrderedCollection new ]