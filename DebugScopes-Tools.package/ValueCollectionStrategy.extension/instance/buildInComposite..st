*DebugScopes-Tools
buildInComposite: composite
	| pharoMethod |
	pharoMethod := composite pharoMethod.
	pharoMethod
		title: self title;
		smalltalkClass: [ node methodNode methodClass ];
		"primarySelectionInterval: (node start to: node stop);"
			variableBindings: [ {(#node -> node)} ];
		display: self printNode.
	pharoMethod addTextSegment: self inspectSegment.
	pharoMethod addTextSegment: (DBActivatorHighlightSegmentMorph forCollectorNode: node)