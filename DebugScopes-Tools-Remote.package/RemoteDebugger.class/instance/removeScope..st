accessing
removeScope: scopeName
	^ remotePharo evaluate: [ (Smalltalk at: #DebugScope) removeScopeNamed: scopeName ]