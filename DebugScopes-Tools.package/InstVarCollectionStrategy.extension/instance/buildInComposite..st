*DebugScopes-Tools
buildInComposite: composite
	composite fastTable
		title: self title;
		display: ((varClass slotNamed: varName) usingMethods collect: [ :m | m compiledMethod ]);
		column: 'Using methods' evaluated: [ :each | each printString ] width: 500;
		selectionAct: [ :tree | tree selection browse ] on: $i entitled: 'Browse'.
	^ self