initialization
initializeActivationConditions
	super initializeActivationConditions.
	activationEvent ifNotNil: [ DebugScopeGlobalAnnouncer default subscribe: activationEvent send: #activate to: self ].
	deactivationEvent ifNotNil: [ DebugScopeGlobalAnnouncer default subscribe: deactivationEvent send: #deactivate to: self ]