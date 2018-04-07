scoping - activation
activateOn: anEvent deactivateOn: anOtherEvent
	self addActivator: (EventActivator activateOn: anEvent deactivateOn: anOtherEvent)