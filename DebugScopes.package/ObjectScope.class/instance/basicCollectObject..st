collecting objects
basicCollectObject: anObject
	scope ifNotNil: [ scope notifyObjectCollection: anObject in: self ].
	(self collectedObjects anySatisfy: [ :o | o == anObject ])
		ifFalse: [ self collectedObjects add: anObject.
			self collectedClasses add: anObject class ]