initialization
initialize
	super initialize.
	reifications := OrderedCollection with: #newValue.
	self initializeLink