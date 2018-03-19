instance creation
activateOn: anEvent deactivateOn: anOtherEvent
	^ self new
		activationEvent: anEvent;
		deactivationEvent: anOtherEvent;
		yourself