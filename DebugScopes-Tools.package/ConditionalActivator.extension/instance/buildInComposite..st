*DebugScopes-Tools
buildInComposite: composite
	| start stop pharoMethod seg |
	start := self node start.
	stop := self node stop + 1.
	pharoMethod := composite pharoMethod.
	pharoMethod
		title: self title;
		smalltalkClass: [ self node methodNode methodClass ];
		"primarySelectionInterval: (self node start to: self node stop);"
		variableBindings: [ {(self node printForScopeControl asSymbol -> self node)} ];
		display: self node source.
		
	seg := RubUnderlinedSegmentMorph from: start to: stop.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect ast'.
	seg iconBlock: [ :segment | self node inspect ].
	seg underlineColor: Color black.
	pharoMethod addTextSegment: seg.
	
	seg := DBActivatorHighlightSegmentMorph from: start to: stop.
	seg highlightCFlowActivatorTextArea.
	pharoMethod addTextSegment: seg.
	