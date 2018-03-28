collecting objects
rejectAll
	self collectedObjects do: [ :o | self scope ifNotNil: [ :s | s rejectObject: o from: self ] ].
	collectedObjects := WeakOrderedCollection new