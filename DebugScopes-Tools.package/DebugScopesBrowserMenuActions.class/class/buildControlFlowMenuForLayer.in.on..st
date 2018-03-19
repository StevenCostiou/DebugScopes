menu - scoping activation
buildControlFlowMenuForLayer: layer in: context on: aBuilder
	aBuilder
		item: 'Scope activation to condition';
		target: self;
		selector: #createConditionalScopeIn:forLayer:;
		arguments: (Array with: context with: layer).
	aBuilder
		item: 'Scope activation to selection';
		target: self;
		selector: #createCFlowScopeIn:forLayer:;
		arguments: (Array with: context with: layer);
		withSeparatorAfter