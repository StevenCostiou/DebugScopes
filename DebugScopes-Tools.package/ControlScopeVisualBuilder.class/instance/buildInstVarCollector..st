visiting
buildInstVarCollector: strategy
	composite fastTable
		title: strategy title;
		display: ((strategy varClass usingMethodsOfSlotNamed: strategy varName) collect: [ :m | m compiledMethod ]);
		column: 'Using methods' evaluated: [ :each | each printString ] width: 500;
		selectionAct: [ :tree | tree selection browse ] on: $i entitled: 'Browse'