initialization
initialize
	super initialize.
	collectAction := [ :value | collector collectObject: value ].
	reifications := OrderedCollection new.
	selector := #value:.
	installAction := #installForClass.
	self initializeLink