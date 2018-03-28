dependencies
release
	activators do: [ :activator | activator release ].
	self basicDeactivate.
	self initializeScope.
	collectors do: [ :collector | collector release ].
	super release