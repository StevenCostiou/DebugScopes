*DebugScopes-Tools
sbuildInComposite: composite
	| start stop pharoMethod seg |
	start := activationAst start.
	stop := deactivationAst stop + 1.
	pharoMethod := composite pharoMethod.
	pharoMethod
		title: self title;
		smalltalkClass: [ activationAst methodNode methodClass ];
		variableBindings: [ {(activationAst printForScopeControl asSymbol -> activationAst).
			(deactivationAst printForScopeControl asSymbol -> deactivationAst)} ];
		display: activationAst methodNode source.
	seg := RubUnderlinedSegmentMorph from: activationAst start to: activationAst stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect start ast'.
	seg iconBlock: [ :segment | activationAst inspect ].
	seg underlineColor: Color black.
	pharoMethod addTextSegment: seg.
	seg := RubUnderlinedSegmentMorph from: deactivationAst start to: deactivationAst stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect stop ast'.
	seg iconBlock: [ :segment | deactivationAst inspect ].
	seg underlineColor: Color black.
	pharoMethod addTextSegment: seg.
	seg := DBActivatorHighlightSegmentMorph from: start to: stop.
	seg highlightCFlowActivatorTextArea.
	pharoMethod addTextSegment: seg