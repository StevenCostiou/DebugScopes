scoping
addActivator: anActivator
	anActivator scope: self.
	activators addIfNotPresent: anActivator.
	self initializeScopeActivation.
	self notifyScopeActivation.
	DebugScopeGlobalAnnouncer default announce: ObjectActivatorHasChanged