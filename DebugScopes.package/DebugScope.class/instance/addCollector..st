scoping
addCollector: aCollector
	aCollector scope: self.
	collectors addIfNotPresent: aCollector.
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged