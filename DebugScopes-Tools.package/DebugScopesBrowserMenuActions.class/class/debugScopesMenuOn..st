menu - scopes
debugScopesMenuOn: aBuilder
	<RubSmalltalkCodeMenu>
	<contextMenu>
	aBuilder
		item: 'Debug Scopes';
		selector: #value;
		target: [  ];
		keyText: 't ';
		order: 0;
		iconName: #workspace;
		with: [ self buildSubMenuOn: aBuilder ]