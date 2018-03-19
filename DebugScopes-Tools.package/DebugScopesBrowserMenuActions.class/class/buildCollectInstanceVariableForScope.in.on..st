menu - scoping objects
buildCollectInstanceVariableForScope: scope in: context on: aBuilder
	aBuilder
		item: 'Collect Instance Variable';
		target: self;
		selector: #collectInstVarInContext:forScope:;
		arguments: (Array with: context with: scope)