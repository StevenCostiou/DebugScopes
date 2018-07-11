visiting
buildTempVarCollector: strategy
	| pharoMethod node |
	pharoMethod := composite pharoMethod.
	node := strategy nodes atRandom.
	pharoMethod
		title: strategy title;
		smalltalkClass: [ strategy varClass ];
		variableBindings: [ {(#node -> node)} ];
		display: (strategy varClass >> strategy methodName) sourceCode.
	strategy nodes
		do: [ :n | 
			| seg |
			pharoMethod addTextSegment: (DBActivatorHighlightSegmentMorph forCollectorNode: n).
			seg := RubUnderlinedSegmentMorph from: n start to: n stop + 1.
			seg icon: (self iconNamed: #smallQuestion).
			seg label: 'Inspect temporary node'.
			seg iconBlock: [ :segment | n inspect ].
			seg underlineColor: Color black.
			pharoMethod addTextSegment: seg ]