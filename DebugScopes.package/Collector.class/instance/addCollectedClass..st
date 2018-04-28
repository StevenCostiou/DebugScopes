collecting objects
addCollectedClass: aClass
	aClass isAnonymous
		ifTrue: [ ^ self ].
	self collectedClasses add: aClass