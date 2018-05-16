visiting
inspectSegmentForReceiver: strategy
	| seg |
	seg := RubUnderlinedSegmentMorph from: strategy node receiver start to: strategy node receiver stop + 1.
	seg icon: (self iconNamed: #smallQuestion).
	seg label: 'Inspect receiver node'.
	seg iconBlock: strategy inspectAction.
	seg underlineColor: Color red.
	^ seg