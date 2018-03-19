dependencies
release
	activationScopes do: [ :scope | scope release ].
	self basicDeactivate.
	self initializeScope.
	objectsScopes do: [ :scope | scope release ].
	super release