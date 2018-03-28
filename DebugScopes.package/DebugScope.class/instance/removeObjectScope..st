scoping
removeObjectScope: aCollector

	aCollector rejectAll.
	collectors remove: aCollector ifAbsent: [  ].
	aCollector release.
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged