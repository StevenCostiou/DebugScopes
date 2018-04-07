*DebugScopes-Tools
inspectSegment
	| seg |
	seg := RubUnderlinedSegmentMorph from: node receiver start to: node receiver stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect receiver node'.
	seg iconBlock: self inspectAction.
	seg underlineColor: Color red.
	^ seg