behaviors - building
behaviorsForCollector: collector in: a
	| table |
	table := a fastTable.
	table
		title: 'Behaviors';
		display: behaviors;
		column: 'Selectors' evaluated: [ :each | each asString ] width: 500;
		selectionAct: [ :tree | 
			self removeBehavior: tree selection.
			tree selection: nil ]
			entitled: 'Remove Behavior'.
	table updateOn: DefinedClassHasChanged from: [ DebugScopeGlobalAnnouncer default weak ]