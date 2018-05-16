visiting
inspectSegmentForValue: strategy
	| seg |
	seg := RubUnderlinedSegmentMorph from: strategy node start to: strategy node stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect value node'.
	seg iconBlock: strategy inspectAction.
	seg underlineColor: Color value green muchDarker.
	^ seg