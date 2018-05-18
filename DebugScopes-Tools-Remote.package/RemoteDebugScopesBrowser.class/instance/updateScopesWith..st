updating
updateScopesWith: remoteScopes
	scopes removeAll.
	scopes addAll: remoteScopes.
	DebugScopeGlobalAnnouncer default announce: DebugScopeHasChanged