*DebugScopes-Tools
buildInComposite: composite
	| node |
	node := self nodes atRandom.
	composite pharoMethod
		title: self title;
		smalltalkClass: [ varClass ];
		primarySelectionInterval: (node start to: node stop);
		variableBindings: [ {(#node -> node)} ];
		display: (varClass >> methodName) sourceCode