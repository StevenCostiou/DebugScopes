adaptations - building
browseAdaptationsForLayer: selectedLayer
	| adaptationBrowser wrapperBrowser |
	adaptationBrowser := self adaptationsBrowser.
	wrapperBrowser := GLMTabulator new.
	wrapperBrowser column: #theOuterPane.
	wrapperBrowser transmit
		fromOutsideEntityPort;
		to: #theOuterPane;
		andShow: [ :a | a custom: adaptationBrowser ].
	^ wrapperBrowser startOn: #()