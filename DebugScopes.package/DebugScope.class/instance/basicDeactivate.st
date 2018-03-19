activation
basicDeactivate
	isActive
		ifFalse: [ ^ self ].
	self ensureSingleProcessAdaptationSafety.
	objectsScopes do: [ :collector | self unadaptCollectedObjectsIn: collector ].
	isActive := false.
	allScopesActivated := false.
	self resumeAdaptedProcess