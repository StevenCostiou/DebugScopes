accessing
scopes
	^ remotePharo evaluate: [ (Smalltalk at: #DebugScope) scopes ]