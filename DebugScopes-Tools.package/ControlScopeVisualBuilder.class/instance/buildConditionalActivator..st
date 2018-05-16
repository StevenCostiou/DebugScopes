visiting
buildConditionalActivator: activator
	| start stop pharoMethod seg |
	start := activator node start.
	stop := activator node stop + 1.
	pharoMethod := composite pharoMethod.
	pharoMethod
		title: activator title;
		smalltalkClass: [ activator node methodNode methodClass ];
		variableBindings: [ {(activator node printForScopeControl asSymbol -> activator node)} ];
		display: activator node source.
		
	seg := RubUnderlinedSegmentMorph from: start to: stop.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect ast'.
	seg iconBlock: [ :segment | activator node inspect ].
	seg underlineColor: Color black.
	pharoMethod addTextSegment: seg.
	
	seg := DBActivatorHighlightSegmentMorph from: start to: stop.
	seg highlightCFlowActivatorTextArea.
	pharoMethod addTextSegment: seg.