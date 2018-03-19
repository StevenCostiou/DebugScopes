collectors and activators - building
browseScopesForLayer: selectedLayer
	| scopesBrowser wrapperBrowser |
	scopesBrowser := self scopesBrowser.
	wrapperBrowser := GLMTabulator new.
	wrapperBrowser column: #theOuterPane.
	wrapperBrowser transmit
		fromOutsideEntityPort;
		to: #theOuterPane;
		andShow: [ :a | a custom: scopesBrowser ].
	^ wrapperBrowser startOn: #()