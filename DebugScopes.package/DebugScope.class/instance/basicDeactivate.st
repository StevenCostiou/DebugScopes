activation
basicDeactivate
	isActive
		ifFalse: [ ^ self ].
	self ensureSingleProcessAdaptationSafety.
	collectors do: [ :collector | self unadaptCollectedObjectsIn: collector ].
	isActive := false.
	allScopesActivated := false.
	self resumeAdaptedProcess