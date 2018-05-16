remote actions
newScope: scopeName
	^ remotePharo evaluate: [ (Smalltalk at: #DebugScope) define: scopeName ]