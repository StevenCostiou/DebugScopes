activation
notifyScopeActivation
	"Is called whenever one scope is activated. If all scopes are active at this time then the layer can try to activate."

	self updateActivationState.
	allScopesActivated
		ifTrue: [ self basicActivate ]
		ifFalse: [ self basicDeactivate ].
	DebugScopeGlobalAnnouncer default announce: ObjectActivatorHasChanged.
	DebugScopeGlobalAnnouncer default announce: DebugScopeHasChanged