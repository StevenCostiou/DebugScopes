*DebugScopes-Tools
buildInComposite: composite
	| pharoMethod node |
	pharoMethod := composite pharoMethod.
	node := self nodes atRandom.
	pharoMethod
		title: self title;
		smalltalkClass: [ varClass ];
		"primarySelectionInterval: (node start to: node stop);"
			variableBindings: [ {(#node -> node)} ];
		display: (varClass >> methodName) sourceCode.
	self nodes
		do: [ :n | 
			| seg |
			pharoMethod addTextSegment: (DBActivatorHighlightSegmentMorph forCollectorNode: n).
			seg := RubUnderlinedSegmentMorph from: n start to: n stop + 1.
			seg icon: (self iconNamed: #smallQuestion).
			seg label: 'Inspect temporary node'.
			seg iconBlock: [ :segment | n inspect ].
			seg underlineColor: Color black.
			pharoMethod addTextSegment: seg ]