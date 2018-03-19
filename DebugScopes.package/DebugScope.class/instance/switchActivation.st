testing
switchActivation
	self isActive
		ifFalse: [ ^ self activate ].
	^ self deactivate