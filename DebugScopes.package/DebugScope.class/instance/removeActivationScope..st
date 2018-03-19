scoping
removeActivationScope: aScope
	activationScopes remove: aScope ifAbsent: [  ].
	aScope release.
	self initializeScopeActivation.
	self notifyScopeActivation.
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged