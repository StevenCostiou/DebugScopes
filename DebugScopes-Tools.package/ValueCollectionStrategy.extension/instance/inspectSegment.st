*DebugScopes-Tools
inspectSegment
	| seg |
	seg := RubUnderlinedSegmentMorph from: node start to: node stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect value node'.
	seg iconBlock: self inspectAction.
	seg underlineColor: Color value green muchDarker.
	^ seg