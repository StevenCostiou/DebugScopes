script - building
browseScriptForScope: selectedScope
	| scriptBrowser wrapperBrowser |
	scriptBrowser := self scriptBrowser.
	wrapperBrowser := GLMTabulator new.
	wrapperBrowser column: #theOuterPane.
	wrapperBrowser transmit
		fromOutsideEntityPort;
		to: #theOuterPane;
		andShow: [ :a | a custom: scriptBrowser ].
	^ wrapperBrowser startOn: #()