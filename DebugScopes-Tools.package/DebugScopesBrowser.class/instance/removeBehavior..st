behaviors - actions
removeBehavior: selector
	| class spec |
	spec :=  (self selectedScope adaptationSpecForCollector: selectedCollector).
	class := spec definingClass.
	class removeSelector: selector.
	spec mustRecompile: true.
	behaviors remove: selector.
	DebugScopeGlobalAnnouncer default announce: DefinedClassHasChanged