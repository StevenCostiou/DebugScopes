scoping - activation
activateEach: delayInMilliseconds for: durationInMilliseconds loop: loop
	self addActivator: (TemporalActivator each: delayInMilliseconds for: durationInMilliseconds loop: loop)