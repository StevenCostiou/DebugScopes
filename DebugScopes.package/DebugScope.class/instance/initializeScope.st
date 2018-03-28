initialization
initializeScope
	collectors := OrderedCollection new.
	activators := OrderedCollection new.
	isActive := false.
	allScopesActivated := false.
	adaptationsForCollectors := Dictionary new.
	activationScript := DebugScopeActivationScript new