initialization
initialize
	super initialize.
	collectAction := [ :value | collector collectObject: value ].
	reifications := OrderedCollection new.
	selector := #value:.
	self initializeLink