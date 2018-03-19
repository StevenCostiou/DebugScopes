collectors and activators - building
scopesBrowser
	| browser |
	browser := GLMTabulator new.
	browser
		row: [ :r | 
			r
				column: #adaptationScopes;
				column: #collectors ];
		row: [ :r | 
			r
				column: #activationDefinition;
				column: #objectDefinition ].
	self activationScopesBrowserOn: browser.
	self objectScopesBrowserOn: browser.
	^ browser