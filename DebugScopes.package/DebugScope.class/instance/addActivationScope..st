scoping
addActivationScope: aScope
	aScope scope: self.
	activationScopes addIfNotPresent: aScope.
	self initializeScopeActivation.
	self notifyScopeActivation.
	DebugScopeGlobalAnnouncer default announce: ObjectActivatorHasChanged