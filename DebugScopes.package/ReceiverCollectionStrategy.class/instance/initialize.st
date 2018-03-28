initialization
initialize
	super initialize.
	reifications := OrderedCollection with: #receiver.
	self initializeLink