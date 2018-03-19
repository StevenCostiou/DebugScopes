behaviors - building
controlsForSelector: selector in: a
	| table |
	self updateControlsListForSelector: selector.
	table := a fastTable.
	table
		title: 'Controlled Behaviors';
		display: controls;
		column: 'Selector' evaluated: [ :each | self printControlledMethod: each controlledMethod] width: 300;
		column: 'Control' evaluated: [ :each | each control ] width: 50;
		column: 'Arguments' evaluated: [ :each | each printArguments ] width: 200;
		selectionAct: [ :tree | self newBehaviorControlled: #before bySelector: selector forCollector: selectedCollector ]
			entitled: 'Insert Before';
		selectionAct: [ :tree | self newBehaviorControlled: #after bySelector: selector forCollector: selectedCollector ]
			entitled: 'Insert After';
		selectionAct: [ :tree | self newBehaviorControlled: #instead bySelector: selector forCollector: selectedCollector ]
			entitled: 'Replace (Instead)';
		selectionAct: [ :tree | 
			self removeControlledBehavior: tree selection.			
			tree selection: nil ]
			entitled: 'Remove Control';
		selectionAct: [ :tree | tree selection inspect ] entitled: 'Inspect'.
	table updateOn: ControlledBehaviorsHasChanged from: [ DebugScopeGlobalAnnouncer default weak ]