as yet unclassified
setup
	remotePharo := TlpRemoteIDE connectTo: (TCPAddress ip: #[127 0 0 1] port: 40423).
	DebugScopesBrowserMenuActions
		remoteClass: (remotePharo evaluate: [ Smalltalk at: #DebugScopesBrowserMenuActions ]).
	^ self