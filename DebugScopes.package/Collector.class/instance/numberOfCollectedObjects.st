accessing
numberOfCollectedObjects
	^ (self collectedObjects select: [ :e | e notNil ]) size