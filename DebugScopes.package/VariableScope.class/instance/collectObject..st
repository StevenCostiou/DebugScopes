collecting objects
collectObject: anObject
	super collectObject: anObject.
	self canCollectMultipleObjects
		ifFalse: [ self collectedObjects
				do: [ :object | 
					object == anObject
						ifFalse: [ self rejectObject: object ] ] ]