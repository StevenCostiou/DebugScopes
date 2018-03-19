scoping - activation
activateEach: delayInMilliseconds for: durationInMilliseconds loop: loop
	self addActivationScope: (TemporalScope each: delayInMilliseconds for: durationInMilliseconds loop: loop)