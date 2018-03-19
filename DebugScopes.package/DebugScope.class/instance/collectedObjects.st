accessing
collectedObjects
	^ WeakOrderedCollection
		withAll:
			((objectsScopes flatCollect: [ :scope | scope collectedObjects ]) select: [ :o | o notNil ])