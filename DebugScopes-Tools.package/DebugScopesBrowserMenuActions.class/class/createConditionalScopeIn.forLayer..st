actions
createConditionalScopeIn: aContext forLayer: aLayer
	| nodes node reifications builder |
	nodes := SugsMenuBuilder findBestNodeIntervalFor: aContext.
	nodes ifEmpty: [ ^ UIManager default inform: 'No selection detected' ].
	node := nodes last.
	reifications := RFReification reificationKeysForNode: node.
	builder := ConditionalScopeBuilder new.
	builder title: 'Condition for ',  aLayer scopeName, ' activation'.
	builder node: node.
	builder scope: aLayer.
	builder activationCondition: ('"Available reifications: ', reifications printString, '"').
	builder openOn: #()
	
	
	