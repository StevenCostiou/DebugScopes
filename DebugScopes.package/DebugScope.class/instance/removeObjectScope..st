scoping
removeObjectScope: aScope
	aScope rejectAll.
	objectsScopes remove: aScope ifAbsent: [  ].
	aScope release.
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged