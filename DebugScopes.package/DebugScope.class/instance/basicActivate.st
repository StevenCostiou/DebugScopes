activation
basicActivate
	isActive
		ifTrue: [ ^ self ].
	self ensureSingleProcessAdaptationSafety.
	objectsScopes do: [ :collector | self adaptCollectedObjectsIn: collector ].
	isActive := true.
	self activationScript evaluate.
	self resumeAdaptedProcess