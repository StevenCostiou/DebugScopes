initialization
initializeScope
	objectsScopes := OrderedCollection new.
	activationScopes := OrderedCollection new.
	isActive := false.
	allScopesActivated := false.
	adaptationsForCollectors := Dictionary new.
	activationScript := DebugScopeActivationScript new