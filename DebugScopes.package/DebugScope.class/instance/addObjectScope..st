scoping
addObjectScope: aScope
	aScope scope: self.
	objectsScopes addIfNotPresent: aScope.
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged