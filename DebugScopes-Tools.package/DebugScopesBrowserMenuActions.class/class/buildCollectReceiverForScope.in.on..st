menu - scoping objects
buildCollectReceiverForScope: scope in: context on: aBuilder
	aBuilder
		item: 'Collect receiver';
		target: self;
		selector: #collectReceiverInContext:forScope:;
		arguments: (Array with: context with: scope)