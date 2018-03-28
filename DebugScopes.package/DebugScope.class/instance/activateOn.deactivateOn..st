scoping - activation
activateOn: anEvent deactivateOn: anOtherEvent
	self addActivator: (EventScope activateOn: anEvent deactivateOn: anOtherEvent)