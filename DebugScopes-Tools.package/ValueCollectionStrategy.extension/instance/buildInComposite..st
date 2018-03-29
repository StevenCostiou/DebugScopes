*DebugScopes-Tools
buildInComposite: composite
	composite pharoMethod
		title: self title;
		smalltalkClass: [ node methodNode methodClass ];
		primarySelectionInterval: (node start to: node stop);
		variableBindings: [ {(#node -> node)} ];
		display: self printNode