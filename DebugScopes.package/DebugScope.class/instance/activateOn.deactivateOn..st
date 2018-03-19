scoping - activation
activateOn: anEvent deactivateOn: anOtherEvent
	self addActivationScope: (EventScope activateOn: anEvent deactivateOn: anOtherEvent)