collectors and activators - building
buildObjectScopeDefinitionFor: scope in: a
	| node |
	node := scope weakNodeReference
		ifNil: [ a fastTable
				title: 'Manual selection of objects';
				display: (scope collectedObjects select: [ :e | e notNil ]);
				column: 'Collected references' evaluated: [ :each | each asString ] width: 500;
				selectionAct: [ :tree | tree selection inspect ] on: $i entitled: 'Inspect'.
			^ self ].
	scope type = scope instVarScopeType
		ifTrue: [ a fastTable
				title: scope title;
				display: (node usingMethods collect: [ :m | m compiledMethod ]);
				column: 'Using methods' evaluated: [ :each | each printString] width: 500;
				selectionAct: [ :tree | tree selection browse ] on: $i entitled: 'Browse'.
			^ self ].
	a pharoMethod
		title: scope title;
		smalltalkClass: [ node methodNode methodClass ];
		primarySelectionInterval: (node start to: node stop);
		variableBindings: [ {(#node -> node)} ];
		display: scope printSpecification