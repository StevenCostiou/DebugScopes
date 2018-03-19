menu - scoping objects
buildCollectTemporaryForScope: scope in: context on: aBuilder
	aBuilder
		item: 'Collect temporary';
		target: self;
		selector: #collectTemporaryInContext:forScope:;
		arguments: (Array with: context with: scope)