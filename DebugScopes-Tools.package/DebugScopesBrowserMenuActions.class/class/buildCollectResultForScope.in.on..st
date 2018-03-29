menu - scoping objects
buildCollectResultForScope: scope in: context on: aBuilder
	aBuilder
		item: 'Collect result';
		target: self;
		selector: #collectResultInContext:forScope:;
		arguments: (Array with: context with: scope)