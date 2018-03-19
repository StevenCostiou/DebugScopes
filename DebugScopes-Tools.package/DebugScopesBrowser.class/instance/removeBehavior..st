behaviors - actions
removeBehavior: selector
	| class |
	class := (self selectedScope adaptationSpecForCollector: selectedCollector) definingClass.
	class removeSelector: selector.
	behaviors remove: selector.
	DebugScopeGlobalAnnouncer default announce: DefinedClassHasChanged