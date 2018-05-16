connection
setupOn: tcpAddress
	remotePharo := TlpRemoteIDE connectTo: tcpAddress.
	DebugScopesBrowserMenuActions remoteClass: (remotePharo evaluate: [ Smalltalk at: #DebugScopesBrowserMenuActions ]).
	^ self