actions
createCFlowScopeIn: aContext forLayer: aLayer
	| nodes |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aContext.
	nodes ifEmpty: [ ^ UIManager default inform: 'No selection detected' ].
	aLayer activateBetween: nodes first and: nodes last