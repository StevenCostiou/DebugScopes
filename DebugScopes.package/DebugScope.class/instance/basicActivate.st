activation
basicActivate
	isActive
		ifTrue: [ ^ self ].
	self ensureSingleProcessAdaptationSafety.
	collectors do: [ :collector | self adaptCollectedObjectsIn: collector ].
	isActive := true.
	self activationScript evaluate.
	self resumeAdaptedProcess