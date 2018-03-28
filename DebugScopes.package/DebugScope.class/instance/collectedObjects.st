accessing
collectedObjects
	^ WeakOrderedCollection withAll: ((collectors flatCollect: [ :collector | collector collectedObjects ]) select: [ :o | o notNil ])