scoping - activation
activateEach: delayInMilliseconds for: durationInMilliseconds loop: loop
	self addActivator: (TemporalScope each: delayInMilliseconds for: durationInMilliseconds loop: loop)