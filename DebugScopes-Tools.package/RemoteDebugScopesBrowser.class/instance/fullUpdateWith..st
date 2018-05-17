updating
fullUpdateWith: remoteScopes	

	
	scopes removeAll.
	scopes addAll: remoteScopes.
	
"	activators := self selectedScope ifNil: [OrderedCollection new] ifNotNil:[:s| s activators].
	collectors := self selectedScope ifNil: [OrderedCollection new] ifNotNil:[:s| s collectors].
	
	DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged.
	DebugScopeGlobalAnnouncer default announce: ObjectActivatorHasChanged.
	DebugScopeGlobalAnnouncer default announce: DebugScopeHasChanged.
"
	
	
	